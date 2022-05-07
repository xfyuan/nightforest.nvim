local utils = {}

utils.bg = "#000000"
utils.fg = "#ffffff"
utils.day_brightness = 0.3

---Convert a hex color into an rgb
---@param hex_str string
---@return table
local hex_to_rgb = function(hex_str)
    local hex = "[abcdef0-9][abcdef0-9]"
    local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
    hex_str = string.lower(hex_str)

    assert(string.find(hex_str, pat) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex_str))

    local r, g, b = string.match(hex_str, pat)
    return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

---Blend colors together
---@param fg string foreground color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
function utils.blend(fg, bg, alpha)
    bg = hex_to_rgb(bg)
    fg = hex_to_rgb(fg)

    local blendChannel = function(i)
        local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
        return math.floor(math.min(math.max(0, ret), 255) + 0.5)
    end

    return string.format("#%02X%02X%02X", blendChannel(1), blendChannel(2), blendChannel(3))
end

---Darken a hex color
---@param hex string
---@param amount integer
---@param bg string
---@return table
function utils.darken(hex, amount, bg)
    return utils.blend(hex, bg or utils.bg, math.abs(amount))
end

---Lighten a hex color
---@param hex string
---@param amount integer
---@param fg string
---@return table
function utils.lighten(hex, amount, fg)
    return utils.blend(hex, fg or utils.fg, math.abs(amount))
end

return utils
