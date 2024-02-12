version = '0.21.5'

local home = os.getenv("HOME")
local xpm_path = home .. "/.local/share/xplr/dtomvan/xpm.xplr"
local xpm_url = "https://github.com/dtomvan/xpm.xplr"

package.path = package.path
  .. ";"
  .. xpm_path
  .. "/?.lua;"
  .. xpm_path
  .. "/?/init.lua"

os.execute(
  string.format(
    "[ -e '%s' ] || git clone '%s' '%s'",
    xpm_path,
    xpm_url,
    xpm_path
  )
)


-- xpm xplr package manager
-- require("xpm").setup({
--
--     -- This works
--     'dtomvan/xpm.xplr',
--
--     -- Or this
--     'github:dtomvan/xpm.xplr',
--
--     -- Or this
--     'https://github.com/dtomvan/xpm.xplr',
--
--     -- You can also use a field
--     { name = "dtomvan/xpm.xplr" },
-- })
--
-- Or

require("xpm").setup({
  plugins = {
    -- Let xpm manage itself
    'dtomvan/xpm.xplr',
    -- { name = 'sayanarijit/fzf.xplr' },
    'dy-sh/dysh-style.xplr',
    -- 'sayanarijit/zentable.xplr',
    'sayanarijit/dua-cli.xplr',
  },
  auto_install = true,
  auto_cleanup = true,
})

require("dua-cli").setup()

