let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
doautoall SessionLoadPre
silent only
silent tabonly
cd ~/Desktop/projects/xv6-labs-2023
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
set shortmess+=aoO
badd +264 user/usertests.c
badd +1 term://~/Desktop/projects/xv6-labs-2023//139623:/usr/bin/fish
badd +1 mkfs/mkfs
badd +1 mkfs/mkfs.c
badd +22 term://~/Desktop/projects/xv6-labs-2023//140279:/usr/bin/fish
badd +58 kernel/fs.h
badd +0 term://~/Desktop/projects/xv6-labs-2023//721440:/usr/bin/fish
badd +24 kernel/syscall.c
badd +2887 term://~/Desktop/projects/xv6-labs-2023//731753:/usr/bin/fish
badd +1 term://~/Desktop/projects/xv6-labs-2023//742946:/usr/bin/fish
argglobal
%argdel
$argadd .
edit kernel/syscall.c
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 25 + 26) / 52)
exe 'vert 1resize ' . ((&columns * 50 + 94) / 189)
exe '2resize ' . ((&lines * 23 + 26) / 52)
exe 'vert 2resize ' . ((&columns * 50 + 94) / 189)
exe 'vert 3resize ' . ((&columns * 68 + 94) / 189)
exe '4resize ' . ((&lines * 30 + 26) / 52)
exe 'vert 4resize ' . ((&columns * 69 + 94) / 189)
exe '5resize ' . ((&lines * 18 + 26) / 52)
exe 'vert 5resize ' . ((&columns * 69 + 94) / 189)
argglobal
enew
file NvimTree_1
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker=#pragma\ region,#pragma\ endregion
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
lcd /
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/projects/xv6-labs-2023//721440:/usr/bin/fish", ":p")) | buffer term://~/Desktop/projects/xv6-labs-2023//721440:/usr/bin/fish | else | edit term://~/Desktop/projects/xv6-labs-2023//721440:/usr/bin/fish | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/projects/xv6-labs-2023//721440:/usr/bin/fish
endif
balt term://~/Desktop/projects/xv6-labs-2023//140279:/usr/bin/fish
setlocal foldmethod=marker
setlocal foldexpr=0
setlocal foldmarker=#pragma\ region,#pragma\ endregion
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/Desktop/projects/xv6-labs-2023
wincmd w
argglobal
balt ~/Desktop/projects/xv6-labs-2023/user/usertests.c
setlocal foldmethod=marker
setlocal foldexpr=0
setlocal foldmarker=#pragma\ region,#pragma\ endregion
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 35 - ((34 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 35
let s:c = 5 - ((2 * winwidth(0) + 34) / 68)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 5 . '|'
else
  normal! 05|
endif
lcd ~/Desktop/projects/xv6-labs-2023
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/projects/xv6-labs-2023//731753:/usr/bin/fish", ":p")) | buffer term://~/Desktop/projects/xv6-labs-2023//731753:/usr/bin/fish | else | edit term://~/Desktop/projects/xv6-labs-2023//731753:/usr/bin/fish | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/projects/xv6-labs-2023//731753:/usr/bin/fish
endif
balt ~/Desktop/projects/xv6-labs-2023/kernel/syscall.c
setlocal foldmethod=marker
setlocal foldexpr=0
setlocal foldmarker=#pragma\ region,#pragma\ endregion
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 2887 - ((29 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2887
normal! 0
lcd ~/Desktop/projects/xv6-labs-2023
wincmd w
argglobal
if bufexists(fnamemodify("term://~/Desktop/projects/xv6-labs-2023//742946:/usr/bin/fish", ":p")) | buffer term://~/Desktop/projects/xv6-labs-2023//742946:/usr/bin/fish | else | edit term://~/Desktop/projects/xv6-labs-2023//742946:/usr/bin/fish | endif
if &buftype ==# 'terminal'
  silent file term://~/Desktop/projects/xv6-labs-2023//742946:/usr/bin/fish
endif
balt term://~/Desktop/projects/xv6-labs-2023//731753:/usr/bin/fish
setlocal foldmethod=marker
setlocal foldexpr=0
setlocal foldmarker=#pragma\ region,#pragma\ endregion
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 18 - ((17 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 0
lcd ~/Desktop/projects/xv6-labs-2023
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 25 + 26) / 52)
exe 'vert 1resize ' . ((&columns * 50 + 94) / 189)
exe '2resize ' . ((&lines * 23 + 26) / 52)
exe 'vert 2resize ' . ((&columns * 50 + 94) / 189)
exe 'vert 3resize ' . ((&columns * 68 + 94) / 189)
exe '4resize ' . ((&lines * 30 + 26) / 52)
exe 'vert 4resize ' . ((&columns * 69 + 94) / 189)
exe '5resize ' . ((&lines * 18 + 26) / 52)
exe 'vert 5resize ' . ((&columns * 69 + 94) / 189)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
