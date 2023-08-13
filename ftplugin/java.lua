-- Java language server
-- for more information, check https://github.com/mfussenegger/nvim-jdtls#configuration-verbose
local jdtls_dir = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
local config_dir = jdtls_dir .. "/config_mac" -- macOS config
local plugins_dir = jdtls_dir .. "/plugins/"
local path_to_jar = plugins_dir .. "org.eclipse.equinox.launcher_1.6.500.v20230717-2134.jar"

local java_home = vim.fn.getenv("JAVA_HOME")
local java_home_binary_path = java_home .. "/bin/java"

local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle", "settings.gradle", "build.xml" }
local root_dir = require("jdtls.setup").find_root(root_markers)
if root_dir == nil then
	vim.notify("Couldn't find root directory for java project", vim.log.levels.ERROR, { title = "JDTLS" })
	return
end

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = vim.fn.stdpath("data") .. "/site/java/workspace-root/" .. project_name
os.execute("mkdir -p " .. workspace_dir)

local config = {
	cmd = {
		java_home_binary_path,

		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xmx1g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",

		"-jar",
		path_to_jar,
		"-configuration",
		config_dir,
		"-data",
		workspace_dir,
	},

	root_dir = root_dir,

	settings = {
		java = {
			home = java_home,
			eclipse = { downloadSources = true },
			configurations = {
				{
					name = "Java - sdkman managed",
					path = java_home,
				},
			},
			maven = { downloadSources = true },
			implementationsCodeLens = { enabled = true },
			referenceCodeLens = { enabled = true },
			references = { includeDecompiledSources = true },
			sources = { organizeImports = true },
			format = {
				enabled = true,
				settings = {
					url = "https://raw.githubusercontent.com/google/styleguide/gh-pages/intellij-java-google-style.xml",
					profile = "GoogleStyle",
				},
			},
		},

		signattureHelp = { enabled = true },

		completion = {
			favoriteStaticMembers = {
				"org.hamcrest.MatcherAssert.assertThat",
				"org.hamcrest.Matchers.*",
				"org.hamcrest.CoreMatchers.*",
				"org.junit.jupiter.api.Assertions.*",
				"java.util.Objects.requireNonNull",
				"java.util.Objects.requireNonNullElse",
				"org.mockito.Mockito.*",
				"org.mockito.ArgumentMatchers.*",
				"org.mockito.Answers.RETURNS_DEEP_STUBS",
			},
			importOrder = {
				"java",
				"javax",
				"com",
				"org",
			},
		},

		sources = {
			organizeImports = {
				starThreshold = 9999,
				staticStarThreshold = 9999,
			},
		},
		codeGeneration = {
			toString = {
				template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
			},
			useBlocks = true,
		},

		flags = {
			allow_incremental_sync = true,
		},
		init_options = {
			bundles = {},
		},
	},
}

config["on_attach"] = function(_, bufnr)
	require("keymaps").map_java_keys(bufnr)
end

require("jdtls").start_or_attach(config)
