let s:plugindir = expand('<sfile>:p:h:h')

function! s:AirHorn()
  let command = '!mplayer -really-quiet ' . s:plugindir . '/airhorn.aiff & clear && echo -e "\033[5m" && figlet "DON''T DO THAT YOU DINGUS" && echo -e "\033[0m"'
  if has("gui_running")
    silent! exec command
  else
    exec command
  endif
endfunction

map <up> :call <SID>AirHorn()<CR>
map <down> :call <SID>AirHorn()<CR>
map <left> :call <SID>AirHorn()<CR>
map <right> :call <SID>AirHorn()<CR>

