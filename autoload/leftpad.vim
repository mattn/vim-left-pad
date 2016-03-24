function! leftpad#Pad(s, l, ...)
  let [s, w, c] = [a:s, abs(a:l) - strdisplaywidth(a:s), get(a:000, 0, ' ')]
  if w > 0
    let cw  = strdisplaywidth(c)
    let cl  = w / cw
    let sw  = w - cw * cl
    if a:l < 0
      let s = s . repeat(c, cl) . repeat(' ', sw)
    else
      let s = repeat(c, cl) . repeat(' ', sw) . s
    endif
  endif
  return s
endfunction
