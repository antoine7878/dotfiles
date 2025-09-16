vim.filetype.add {
    extension = {
        pyx = "cython",
        pxd = "cython",
        pxi = "cython",
    },
}

require("config.lazy")
require("config.options")
require("config.autocmd")
require("config.keymap")
