print("telescoe config is loaded")
require('telescope').setup{
  defaults = {
    prompt_prefix = "$ "
  }
}

require('telescope').load_extension('fzf')
