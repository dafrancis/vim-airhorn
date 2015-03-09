let s:plugindir = expand('<sfile>:p:h:h')

function! s:AirHorn()
  execute '!mplayer -really-quiet ' . s:plugindir . '/airhorn.aiff & clear && echo -e "\033[5m" && figlet "DON''T DO THAT YOU DINGUS" && echo -e "\033[0m"'
endfunction

map <up> :call <SID>AirHorn()<CR>
map <down> :call <SID>AirHorn()<CR>
map <left> :call <SID>AirHorn()<CR>
map <right> :call <SID>AirHorn()<CR>

