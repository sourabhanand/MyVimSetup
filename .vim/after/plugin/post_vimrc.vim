if exists(":NERDTree")
  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p
  autocmd BufWinEnter * NERDTreeMirror
endif
