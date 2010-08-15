"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Piour's .vimrc file.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Last change: 31/01/2009
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" http://www.vim.org/scripts/script.php?script_id=42 (bufexplorer)
" http://www.vim.org/scripts/script.php?script_id=294 (align)
" http://www.vim.org/scripts/script.php?script_id=1218 (nerd_commenter)
" http://www.vim.org/scripts/script.php?script_id=1697 (surround)
" http://www.vim.org/scripts/script.php?script_id=1764 (code_complete / C only)
" http://www.vim.org/scripts/script.php?script_id=2009 (autoclose)



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Aide
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" http://vim.dindinx.net/traduit/html/options.txt.php (fr)
" :help commande



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trucs à retenir
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
" Trucs a voir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set digraph " enable digraphs, needed for special characters
" set magic " enable advanced regular expression in searches



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lancement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible   " pas de compatibilité avec vi
" Inclusion d'un autre fichier avec des options
if filereadable(expand("~/.vimrc_local.vim"))
   source ~/.vimrc_local.vim
endif



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

set laststatus=1       " type de la barre de statut

set cmdheight=1        " nombre de lignes réservées au mode Lignecmd
set ruler              " affiche la position du curseur (lignes & colonnes)

set scrolloff=5        " nb. min. de lignes au dessus et au dessous du curseur

set hlsearch           " colore les occurrences du motif recherché
set incsearch          " colore l'occurrence pendant la saisie de recherche


set showmatch          " lien entre parentheses correspondantes
runtime macros/matchit.vim " permet les liens entre tag xml et autres syntaxes

set title              " donne un titre au terminal

set ttyfast            " terminal rapide ??



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Edition
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=50         " taille de l'historique du mode Lignecmd
set undolevels=50      " nb. maximum de changements pouvant être annulés.

set autoread           " relit auto. un fichier modifié en dehors de vim

set formatoptions=tcrqn2       " coupure des mots a textwidth
set backspace=indent,eol,start " retour arrière :help i_backspacing

set smartindent  " indentation automatique pour les programmes
set shiftwidth=3 " nombre de blancs couverts par un décalage (< et >)
set tabstop=3    " nombre de blancs couverts par une tabulation (<Tab>)
set expandtab    " remplit d'espaces blancs les caractères <Tab>

set showcmd      " affichage des commandes partiellement saisies

set foldmethod=syntax " gestion des replis (basé syntaxe)



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Coloration syntaxique
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"highlight clear
"highlight Normal      ctermfg=black
"highlight Comment     ctermfg=darkgreen
"highlight Constant    ctermfg=darkblue
"highlight String      ctermfg=black
"highlight Identifier  ctermfg=black
"highlight Statement   ctermfg=black
"highlight PreProc     ctermfg=darkblue
"highlight Type        ctermfg=darkblue
"highlight Special     ctermfg=darkblue
"highlight Underlined  ctermfg=darkblue  ctermbg=green
"highlight Ignore      ctermfg=lightblue
"highlight Error       ctermfg=red
"highlight Todo        ctermfg=red

" Coloration syntaxique
highlight clear
highlight Normal      ctermfg=grey
highlight Comment     ctermfg=darkgreen
highlight Constant    ctermfg=darkcyan
highlight Identifier  ctermfg=grey
highlight Statement   ctermfg=grey
highlight PreProc     ctermfg=darkcyan
highlight Type        ctermfg=darkcyan
highlight Special     ctermfg=darkcyan
highlight Underlined  ctermfg=darkcyan
highlight Ignore      ctermfg=lightblue
highlight Error       ctermfg=red
highlight Todo        ctermfg=red



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Touches personnelles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" clavier fr
map ; .

" ² change capitale/minuscule
map ² ~

" <F2> enregistre le fichier
nnoremap <F2> :w<CR>
" <F3> compile
nnoremap <F3> :make<CR><CR><CR>

" <F5> rafraichit le fichier en cours d'édition
nnoremap <F5> :e!<CR>

" <F6> explorateur de tampons (split horizontal)
nnoremap <F6> :HSBufExplorer<CR>
" <F7> explorateur de fichiers (split horizontal)
nnoremap <F7> :Hexplore<CR>

" <F10> aspell sur fichier tex
nnoremap <F10> :!aspell --mode=tex check % <CR> :e!<CR>
" <F11> efface les espaces en fin de ligne
nnoremap <F11> :%s/\s\+$//<CR>
" <F12> met à jour le vimrc
nnoremap <F12> :source ~/.vimrc<CR>

" <TAB> indentation à la emacs
nnoremap <tab> =$

" <C-D> ajoute la date courrante, format : JJ/MM/YYYY
nmap <C-D> "=strftime("%d/%m/%Y")<CR>P

" <SPACE> depliage/repliage
nmap <Space> zA

" ctrl-j coupe la ligne au niveau du curseur en mode normal
" l'inverse de maj-j
nmap <C-j> i<CR><ESC>

" aligne les = de la selection
vmap ,a <Plug>AM_t= 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Abreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set wildmenu                  " pas besoin si wildmode a full
set wildmode=list:full          " mode du complètement
set completeopt=longest,menuone " menu lors d'un complement

" InsertTabWrapper
" direction : sens de recherche pour la completion (forward ou backward)
" choisit la bonne fonction pour la touche <TAB> suivant les cas
function! InsertTabWrapper(direction)
   let col = col('.') - 1
   if !col || getline('.')[col - 1] !~ '\k'
      return "\<tab>"
   elseif "backward" == a:direction
      return "\<c-p>"
   else
      return "\<c-n>"
   endif
endfunction

" <TAB> fais la completion (style shell) - mot suivant
inoremap <s-tab> <c-r>=InsertTabWrapper ("forward")<cr>
" <TAB> fais la completion (style shell) - mot precedant
inoremap <tab> <c-r>=InsertTabWrapper ("backward")<cr>

highlight   Pmenu      ctermfg=black ctermbg=lightcyan
highlight   PmenuSel   ctermfg=0 ctermbg=7
highlight   PmenuSbar  ctermfg=7 ctermbg=0
highlight   PmenuThumb ctermfg=0 ctermbg=7



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tests
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Mutt
au BufEnter mutt* so ~/.vim/mutt.colors


" LaTeX
vn _b s\textbf{}<ESC>P
vn _i s\textit{}<ESC>P
vn _sc s\textsc{}<ESC>P

vn _pc S\begin{center}<CR>\end{center}<ESC>P
vn _pl S\begin{flushleft}<CR>\end{flushleft}<ESC>P
vn _pr S\begin{right}<CR>\end{right}<ESC>P
vn _pv S\begin{verbatim}<CR>\end{verbatim}<ESC>P
vn _fg S\begin{figure}[h]<CR>\end{figure}<ESC>P

vn _pa s\part{}<ESC>P
vn _ch s\chapter{}<ESC>P
vn _se s\section{}<ESC>P
vn _s2 s\subsection{}<ESC>P
vn _s3 s\subsubsection{}<ESC>P

vn _ft s\footnote{}<ESC>P
vn _lb s\label{}<ESC>P
vn _rf s\ref{}<ESC>P
vn _vr s\vref{}<ESC>P

function MakeList (text1, text2, text3) range
   exe (a:firstline) . "," . a:lastline . 's/^/' . a:text3
   if (strlen(a:text1) > 0)
      exe append (a:firstline -1 ,a:text1)
   endif
   if (strlen(a:text2) > 0)
      exe append (a:lastline +1, a:text2)
   endif
endfunction

function RemoveComments () range
   exe (a:firstline) . "," . a:lastline . 's/^% /'
endfunction

vn _pt :call MakeList("","", "\\\\item ") <CR>
vn _mc :call MakeList("","", "\% ") <CR>
vn _xc :call RemoveComments() <CR>

vn _ls :call MakeList("\\begin{itemize}","\\end{itemize}", "\\\\item ") <ESC> :'>+2 <CR>
vn _le :call MakeList("\\begin{enumerate}","\\end{enumerate}", "\\\\item ") <ESC> :'>+2 <CR>


nmap <leader>rci :%!ruby-code-indenter<cr> 
set path+=/path/to/your/rails-application/app/**
set path+=/path/to/your/rails-application/lib/**
set suffixesadd=.rb
set includeexpr+=substitute(v:fname,'s$','','g')

highlight OverLength ctermbg=yellow ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" testing
