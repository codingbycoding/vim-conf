" basic conf
se nu
se ts=2
se expandtab
se sts=2 
se wrap
se linebreak
se nolist " list disables linebreak
se textwidth=0
se shiftwidth=2
se hlsearch
se rnu

" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

" YCM
Plugin 'ycm-core/YouCompleteMe'

" vim-javascript

Plugin 'pangloss/vim-javascript'

" python-mode 
Plugin 'klen/python-mode'

" rust
" Plugin 'rust-lang/rust'

" reactjs jsx
Plugin 'mxw/vim-jsx'


" nerdtree
Plugin 'scrooloose/nerdtree'

" colorschemas
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'altercation/solarized'


" supertab
Plugin 'ervandew/supertab'

" Track the engine.
Plugin 'SirVer/ultisnips'
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" k8s
Plugin 'andrewstuart/vim-kubernetes'


" docker
Plugin 'ekalinin/Dockerfile.vim'


" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


execute pathogen#infect()

" Golang
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()

let g:go_highlight_types = 1
let g:go_def_mode = 'godef'

"
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
"

" FZF
" If installed using git
Plug '~/.fzf'
set rtp+=~/.fzf

" Javascript
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:javascript_plugin_flow = 1

" ale
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

set path=.,/usr/local/include,/usr/include,/home/adam/go/src,/home/adam/go/src/solarland/backendv2,/usr/lib/golang/src,./node_modules,./../node_modules,
let &path = &path . getcwd() . '/node_modules'

" autocmd vimenter * NERDTree



" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" for python3/dyn
set pythonthreedll=/usr/lib64/libpython3.so

" ctrlp
let g:ctrlp_regexp = 1
