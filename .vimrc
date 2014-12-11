"以下を実行後、.vimrcを編集している。
"
"# 配置先のディレクトリを作成
"$ mkdir -p ~/.vim/bundle
"# NeoBundleをリポジトリから取得
"$ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
"

:set encoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8

syntax on
::colorscheme darkblue

" statusline
:set laststatus=2
function! g:Date()
    return strftime("%x %H:%M")
endfunction
:set statusline=%F%m%r%h%w\%=[TYPE=%Y]\[ENC=%{&fileencoding}]\[POS=%04l,%04v][%p%%]\[LOW=%l/%L]\ %{g:Date()}

" tab key
:set tabstop=4
:set autoindent
:set expandtab
:set shiftwidth=4

" tab navigation like firefox
nnoremap <tab>   :tabnext<CR>

" .vim/bundleの設定
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  call neobundle#end()
endif

NeoBundleFetch 'Shougo/neobundle.vim'

" solarized
NeoBundle 'altercation/vim-colors-solarized'
" mustang
NeoBundle 'croaker/mustang-vim'
" jellybeans
NeoBundle 'nanotech/jellybeans.vim'
" molokai
NeoBundle 'tomasr/molokai'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/neosnippet-snippets.vim'

filetype plugin indent on


