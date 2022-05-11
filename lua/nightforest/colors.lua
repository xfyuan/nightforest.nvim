local colors = {
  white       = '#FFFFFF',
  black       = '#000000',
}

function colors.generate(midnight)
  if vim.o.background == 'dark' then
    colors.fg          = '#d3c6aa'
    colors.red         = '#e67e80'
    colors.orange      = '#e69875'
    colors.yellow      = '#dbbc7f'
    colors.green       = '#a7c080'
    colors.aqua        = '#83c092'
    colors.blue        = '#7fbbb3'
    colors.purple      = '#d699b6'
    colors.grey0       = '#7a8478'
    colors.grey1       = '#859289'
    colors.grey2       = '#9da9a0'
    colors.statusline1 = '#a7c080'
    colors.statusline2 = '#d3c6aa'
    colors.statusline3 = '#e67e80'

    if midnight then
      -- colors.bg          = '#262d33'
      colors.bg          = '#2a3841'
      -- colors.bg          = '#233c3c'
      colors.bg          = '#233c3c'
      colors.bg1         = '#323c41'
      colors.bg2         = '#3a454a'
      colors.bg3         = '#445055'
      colors.bg4         = '#4c555b'
      colors.bg5         = '#53605c'
      colors.bg_visual   = '#503946'
      colors.bg_red      = '#4e3e43'
      colors.bg_green    = '#404d44'
      colors.bg_blue     = '#394f5a'
      colors.bg_yellow   = '#4a4940'
    else
      colors.bg          = '#2f383e'
      colors.bg1         = '#374247'
      colors.bg2         = '#404c51'
      colors.bg3         = '#4a555b'
      colors.bg4         = '#525c62'
      colors.bg5         = '#596763'
      colors.bg_visual   = '#573e4c'
      colors.bg_red      = '#544247'
      colors.bg_green    = '#445349'
      colors.bg_blue     = '#3b5360'
      colors.bg_yellow   = '#504f45'
    end
  else
    colors.bg          = '#f5edd7'
    colors.fg          = '#5c6a72'

    colors.bg1         = '#f3efda'
    colors.bg2         = '#edead5'
    colors.bg3         = '#e4e1cd'
    colors.bg4         = '#dfdbc8'
    colors.bg5         = '#bdc3af'
    colors.bg_visual   = '#eaedc8'
    colors.bg_red      = '#fbe3da'
    colors.bg_green    = '#f0f1d2'
    colors.bg_blue     = '#e9f0e9'
    colors.bg_yellow   = '#faedcd'
    colors.red         = '#f85552'
    colors.orange      = '#f57d26'
    colors.yellow      = '#dfa000'
    colors.green       = '#8da101'
    colors.aqua        = '#35a77c'
    colors.blue        = '#3a94c5'
    colors.purple      = '#df69ba'
    colors.grey0       = '#a6b0a0'
    colors.grey1       = '#939f91'
    colors.grey2       = '#829181'
    colors.statusline1 = '#93b259'
    colors.statusline2 = '#708089'
    colors.statusline3 = '#e66868'
  end
end

return colors
