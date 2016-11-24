set nocompatible              			"This is the latest vim 

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start                                "Makes backspace function like every other editor
let mapleader = ','                                           "The default leader is \, but a comma is better for me
set number                                                    "Let's activate line numbers.

"-------------Visuals------------"
colorscheme atom-dark

set guifont=Fira\ Code:h12
set macligatures

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set linespace=15					      "Macvim-specific line-height.

"-------------Mappings------------"
set hlsearch
set incsearch

"-------------Mappings------------"
"This allows me to edit vim on the fly.
nmap <leader>ev :tabedit $MYVIMRC<cr>			      
"This allows me to bring in multiple lines.
nmap oo o<Esc>k						      
"This allows me to get rid of the highlighting.
nmap <Leader><space> :nohlsearch<cr>			      
"Make NERDTree easier to toggle
nmap <D-1> :NERDTreeToggle<cr>

"-------------Split Management------------"
"This sets the split always below the current one.
set splitbelow
"This sets the split always to the right when vertical
set splitright
"This allows me to easily transition in between the splits simply using command and then whatever direction I want to move in.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-------------Automatic Commands------------"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

