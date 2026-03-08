let mapleader = " "
luafile $HOME/.config/nvim/lazy.lua

colorscheme quiet

highlight Normal guibg=none ctermbg=none
highlight NonText guibg=none ctermbg=none
highlight WinSeparator guibg=none guifg=none
highlight link String DiagnosticWarn

set tabstop=2
set shiftwidth=2
set expandtab
set nohlsearch
set nowrap

set shortmess+=I
set laststatus=0
set statusline=
set fillchars+=vert:\ ,stl:\ 
set fillchars+=eob:\ 
set fillchars+=horiz:─,horizup:─,horizdown:─
set showtabline=0

let &statusline='%#Normal# '
let g:netrw_banner = 0

set tags=~/.cache/tags,tags

nnoremap <leader>e :Ex<CR>

autocmd FileType typescript,typescriptreact compiler bypescript
autocmd FileType dart compiler dart

" Quickfix
function! QfFormat(info)
  let items = getqflist({'id': a:info.id, 'items': 1}).items
  let out = []

  for item in items
    call add(out, printf('%s (%s:%d:%d)',
      \ item.text,
      \ fnamemodify(bufname(item.bufnr), ':t'),
      \ item.lnum,
      \ item.col))
  endfor

  return out
endfunction

set quickfixtextfunc=QfFormat

function! ToggleNumber()
  if &l:number || &l:relativenumber
    setlocal nonumber norelativenumber
  else
    setlocal number relativenumber
  endif
endfunction

nnoremap <leader>n :call ToggleNumber()<CR>
