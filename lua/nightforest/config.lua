local config = {
  defaults = {
    midnight = false,
    overrides = {},
  },
}

setmetatable(config, { __index = config.defaults })

return config
