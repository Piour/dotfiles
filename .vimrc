"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Piour's .vimrc file.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Last change: 12/05/2013 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
Bundle 'Tagbar'
Bundle 'TaskList.vim'

Bundle 'Solarized'

Bundle 'AutoClose'
Bundle 'surround.vim' 
" ysiw) viwS)

Bundle 'ervandew/supertab'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'klen/python-mode'
Bundle 'jshint.vim'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

let g:pymode_lint_cwindow = 0
let g:pymode_lint_ignore  = "E221,E201"
let g:pymode_rope         = 0
let g:pymode_options      = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Aide
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" http://vim.dindinx.net/traduit/html/options.txt.php (fr)
" :help commande


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trucs a retenir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <C-r> : redo
" <C-g> : Affiche le nom du fichier courant (avec son chemin)
"         et la position du curseur
" <C-r> <C-w> : place le mot sous le curseur dans la ligne de commande
"               par ex. pour changer le mot sous le curseur :s /^R^W/hihi/
" <C-x> <C-l> : completion ligne
" <C-x> <C-f> : completion fichier
" <C-x> <C-k> : completion dictionnaire set dictionary+=/usr/share/dict/words
" set nu: affiche les numeros de lignes
" :.! cmd : ajoute la sortie de la commande cmd au fichier en cours d'edition


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lancement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible   " pas de compatibilite avec vi


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ouverture d'un fichier
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype indent on " indente selon le type de fichier
filetype plugin on " charge les plugins relatifs au fichier ouvert
if has("syntax")   " active la couloration syntaxique si possible
   syntax on
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=             " fonctionnement normal de souris

set visualbell t_vb=   " enleve le bip en cas d'erreur
" set errorbells
" set novisualbell
" set noeb
" set novb

set laststatus=2       " type de la barre de statut

set cmdheight=1        " nombre de lignes reservees au mode Lignecmd
set ruler              " affiche la position du curseur (lignes & colonnes)

set scrolloff=5        " nb. min. de lignes au dessus et au dessous du curseur

set hlsearch           " colore les occurrences du motif recherche
set incsearch          " colore l'occurrence pendant la saisie de recherche


set showmatch          " lien entre parentheses correspondantes
runtime macros/matchit.vim " permet les liens entre tag xml et autres syntaxes

set title              " donne un titre au terminal

set ttyfast            " terminal rapide ??


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Edition
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=1000       " taille de l'historique du mode Lignecmd
set undolevels=1000    " nb. maximum de changements pouvant etre annules.

set autoread           " relit auto. un fichier modifie en dehors de vim

set formatoptions=tcrqn2       " coupure des mots a textwidth
set backspace=indent,eol,start " retour arriere :help i_backspacing

set smartindent  " indentation automatique pour les programmes
set shiftwidth=4 " nombre de blancs couverts par un decalage (< et >)
set tabstop=4    " nombre de blancs couverts par une tabulation (<Tab>)
set expandtab    " remplit d'espaces blancs les caracteres <Tab>

set showcmd      " affichage des commandes partiellement saisies


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coloration syntaxique
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:solarized_termtrans = 1
colorscheme solarized


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Touches personnelles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" clavier fr
let mapleader = ","
map ; .

" ² change capitale/minuscule
map ² ~

" ,n pour passer en mode normal
imap <leader>n <ESC>

" <F2> enregistre le fichier
nnoremap <F2> :w<CR>

" <F3> compile
nnoremap <F3> :make<CR><CR><CR>
" <F5> rafraichit le fichier en cours d'edition
nnoremap <F5> :e!<CR>

" <F7> explorateur de fichiers (split horizontal)
nnoremap <F7> :Hexplore<CR>

" <F10> aspell sur fichier tex
nnoremap <F10> :!aspell --mode=tex check % <CR> :e!<CR>
" <F11> efface les espaces en fin de ligne
nnoremap <F11> :%s/\s\+$//<CR>
" <F12> met a jour le vimrc
nnoremap <F12> :source ~/.vimrc<CR>

" <TAB> indentation a la emacs
nnoremap <tab> =$

" <date> en mode normal ajoute la date courrante, format : JJ/MM/YYYY
nmap date "=strftime("%d/%m/%Y")<CR>P

" ctrl-j coupe la ligne au niveau du curseur en mode normal
" l'inverse de maj-j
nmap <M-j> i<CR><ESC>

" aligne les = de la selection
vmap ,a <Plug>AM_t=

" supprime la mise en valeur des elements recherches
nnoremap <CR> :noh<CR>/<BS>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Abreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set wildmenu                  " pas besoin si wildmode a full
set wildmode=list:full          " mode du completement
set completeopt=longest,menuone " menu lors d'un complement

let g:SuperTabDefaultCompletionType = 'context' 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tests
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map Y y$
vnoremap < <gv
vnoremap > >gv
nnoremap j gj
nnoremap k gk
inoremap jk <Esc>
noremap <Leader><Leader> <C-^>
autocmd BufEnter * execute ":silent! chdir ".escape(expand("%:p:h"), ' ')
