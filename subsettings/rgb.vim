"inoremap <Space> <Esc>:call LiveRGB()<CR>a<Space>

function! LiveRGB()
    "execute '!./.screenlayout/wallpaper.sh 0 &'
    execute '!nohup /home/cubey/.screenlayout/wallpaper.sh 0 > /dev/null 2>&1 &'
endfunction


