set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" https://github.com/VundleVim/Vundle.vim
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'
" https://github.com/rbong/vim-flog
Plugin 'rbong/vim-flog'

" https://github.com/airblade/vim-gitgutter
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed = '__'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" https://github.com/editorconfig/editorconfig-vim
Plugin 'editorconfig/editorconfig-vim'

" https://github.com/ap/vim-buftabline
Plugin 'ap/vim-buftabline'
" https://github.com/jlanzarotta/bufexplorer
Plugin 'jlanzarotta/bufexplorer'
nnoremap <Leader>b :ToggleBufExplorer<CR>
inoremap <Leader>b <ESC>:ToggleBufExplorer<CR><ESC>
nnoremap gb :bnext!<CR>
nnoremap gB :bprevious!<CR>

" https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'
" https://github.com/Xuyuanp/nerdtree-git-plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'
" shows hidden files/folders by default
let NERDTreeShowHidden = 1
" ignore file/folder(like .git/ , .DS_Store/ etc) in NerdTree
let NERDTreeIgnore = ['\.DS_Store$', '\.git$', '__pycache__', '.mypy_cache', '.pyc']
nnoremap <Leader>n :NERDTreeToggle<CR>
inoremap <Leader>n <ESC>:NERDTreeToggle<CR><ESC>

" https://github.com/kien/ctrlp.vim
Plugin 'kien/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn|mypy_cache|__pycache__)$', 'file': '\v\.(exe|so|dll|swp|pyc)|(tags)$'}

" https://github.com/preservim/nerdcommenter
Plugin 'scrooloose/nerdcommenter'

" https://github.com/justinmk/vim-sneak
Plugin 'justinmk/vim-sneak'
" sneak color setting
autocmd ColorScheme * hi Sneak ctermfg=black ctermbg=darkgray

" https://github.com/ycm-core/YouCompleteMe
Plugin 'ycm-core/YouCompleteMe'
nnoremap <Leader>t :YcmCompleter GoToDefinitionElseDeclaration<CR>
inoremap <Leader>t <ESC>:YcmCompleter GoToDefinitionElseDeclaration<CR>
set completeopt-=preview
" https://github.com/ycm-core/YouCompleteMe#option-2-provide-the-flags-manually
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

" https://github.com/jremmen/vim-ripgrep
Plugin 'jremmen/vim-ripgrep'
" Search for the word under cursor
nnoremap <Leader>f :Rg <Space><C-R>=expand('<cword>')<CR><CR>
inoremap <Leader>f <ESC>:Rg <Space><C-R>=expand('<cword>')<CR><CR>

" https://github.com/tpope/vim-abolish
Plugin 'tpope/vim-abolish'

" https://github.com/bfrg/vim-cpp-modern
Plugin 'bfrg/vim-cpp-modern'

" https://github.com/Chiel92/vim-autoformat
Plugin 'chiel92/vim-autoformat'
let g:formatters_python = ['black']
let g:formatters_javascript = ['standard_javascript']
let g:formatters_html = ['stylelint']
let g:formatters_css = ['stylelint']
let g:formatters_json = ['prettier']
let g:formatters_vue = ['prettier']
autocmd BufWritePre * :Autoformat

Plugin 'dense-analysis/ale'
let g:ale_linters = {'python': ['mypy', 'black'],'javascript': ['standard']}
let g:ale_fixers = {'python': ['isort', 'black'],'javascript': ['standard']}
let g:ale_sign_column_always = 1
let g:ale_sign_error = 'E>'
let g:ale_sign_warning = 'W>'
let g:ale_fix_on_save = 1
autocmd ColorScheme * hi ALEErrorSign guifg=#dc322f
autocmd ColorScheme * hi ALEWarningSign guifg=#dc322f

" https://github.com/pangloss/vim-javascript
Plugin 'pangloss/vim-javascript'
" https://github.com/elzr/vim-json
Plugin 'elzr/vim-json'
" https://github.com/othree/html5.vim
Plugin 'othree/html5.vim'
" https://github.com/mattn/emmet-vim
Plugin 'mattn/emmet-vim'
let g:user_emmet_leader_key='<Leader>'
" https://github.com/ap/vim-css-color
Plugin 'ap/vim-css-color'

" https://github.com/farmergreg/vim-lastplace
Plugin 'farmergreg/vim-lastplace'
let g:lastplace_ignore = 'gitcommit,gitrebase'
let g:lastplace_ignore_buftype = 'quickfix,nofile,help'
let g:lastplace_open_folds = 0

" https://github.com/lifepillar/vim-solarized8
" https://vimawesome.com/plugin/vim-colors-solarized
Plugin 'lifepillar/vim-solarized8'
" https://github.com/vim-airline/vim-airline
" sudo apt-get install powerline
" brew tap caskroom/fonts
" brew cask install font-sourcecodepro-nerd-font
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" https://github.com/nathanaelkane/vim-indent-guides
Plugin 'nathanaelkane/vim-indent-guides'
" indent guide color setting
" https://github.com/altercation/vim-colors-solarized
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg = #073642
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg = #073642

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"
" common setting
"

" https://stackoverflow.com/questions/6547680/on-keystroke-insert-line-of-code-in-macvim-for-pdb
" https://vi.stackexchange.com/questions/13997/vim-python-debugger
" https://chienweichih.github.io/vimcdoc/doc/filetype.html
autocmd BufRead,BufNewFile *.py set filetype=python
autocmd FileType python :nnoremap <Leader>d <ESC>^o__import__("ipdb").set_trace()<Esc>
autocmd FileType python :inoremap <Leader>d <ESC>^o__import__("ipdb").set_trace()<Esc>o

" Fast save and quit from normal and insert mode
nnoremap <C-S> :w<CR>
inoremap <C-S> <ESC>:w<CR><ESC>
nnoremap q :q<CR>
nnoremap <Leader>q :qa!<CR>

" Disable Ex mode
nnoremap Q <nop>

" https://vim.fandom.com/wiki/Automatically_fitting_a_quickfix_window_height
au FileType qf call AdjustWindowHeight(10, 30)
function! AdjustWindowHeight(minheight, maxheight)
    exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

" show line number
set number

" set syntax on
syntax on

" set use systemwide clipboard
set clipboard=unnamed

" True color suuport
" https://github.com/vim/vim/issues/993
" set Vim-specific sequences for RGB colors
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" set theme
set background=dark
colorscheme solarized8
let g:airline_theme = 'solarized'
