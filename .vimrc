set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

filetype off
call plug#begin('~/.vim/plugged')
Plug 'liuchengxu/vim-which-key'
Plug 'easymotion/vim-easymotion'
Plug 'NLKNguyen/papercolor-theme'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'ludovicchabant/vim-gutentags'
" Plug 'Chiel92/vim-autoformat'
Plug 'sbdchd/neoformat'
Plug 'preservim/nerdcommenter'
Plug 'powerline/fonts'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'dense-analysis/ale'
Plug 'Yggdroot/LeaderF', {'do': './install.sh'}
Plug 'sbdchd/neoformat'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'Raimondi/delimitMate'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'honza/vim-snippets'
call plug#end()
" :PlugInstall
" :PlugUpgrade
" :PlugClean

let mapleader=','
let g:mapleader=','
inoremap jk <esc>

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
inoremap <Left> :echoe "Use h"<CR>
inoremap <Right> :echoe "Use l"<CR>
inoremap <Up> :echoe "Use k"<CR>
inoremap <Down> :echoe "Use j"<CR>

syntax enable
set encoding=utf-8
set shiftwidth=4
set tabstop=4
set noerrorbells visualbell t_vb=
set expandtab
set smarttab
set nobackup
set nowb
set noswapfile
set autoindent
set smartindent
set softtabstop=4
set backspace=2
set textwidth=112
set number
" set relativenumber
" function! ToggleRelativeOn()
"     set nu!
"     set rnu
" endfunction
" function! ToggleNumbersOn()
"     set rnu!
"     set nu
" endfunction
" autocmd FocusLost * call ToggleNumbersOn()
" autocmd FocusGained * call ToggleRelativeOn()
" autocmd InsertEnter * call ToggleNumbersOn()
" autocmd InsertLeave * call ToggleRelativeOn()
augroup relative_nubmer
    autocmd!
    autocmd FocusLost * : set norelativenumber
    autocmd FocusGained * : set relativenumber
    autocmd InsertEnter * : set norelativenumber
    autocmd InsertLeave * : set relativenumber
augroup END
set numberwidth=5
set mouse=a
set mousemodel=popup
set ruler
set showcmd
set scrolloff=3
set nowrap
set colorcolumn=+1
set vb t_vb=
set cursorline
set wildmenu
set wildmode=list:longest,full
set guicursor=n-v-c:hor20
set hidden
set noundofile
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

set background=dark
colorscheme PaperColor
function! ToggleBG()
    let s:tbg = &background
    if s:tbg == "dark"
        set background=light
    else
        set background=dark
    endif
endfunction
noremap <leader>bg :call ToggleBG()<CR>

let g:lsp_cxx_hl_use_text_props = 1

nnoremap <Up> <C-w>10+
nnoremap <Down> <C-w>10-
nnoremap <Left> <C-w>10<
nnoremap <right> <C-w>10>

noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

" function! SetCursorStyle()
"     if &term =~ "xterm\\|rxvt"
"         let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"         let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"         autocmd VimLeave * silent !echo -ne "\<Esc>]50;CursorShape=0\x7"
"     endif
" endfunction 

" endif
" NERDTREE
" map <F3> :NERDTreeToggle<CR>
" map <C-F3> :NERDTreeFind<CR>
nmap <silent> <leader>k :NERDTreeToggle<cr>
nmap <silent> <leader>y :NERDTreeFind<cr>
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI=0
let NERDTreeDirArrows=0
let NERDTreeAutoCenter=1
let NERDTreeShowFiles=1
let NERDTreeWinSize=30

" delimitMate
let delimitMate_expand_cr=1

" vim-which-key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500
" let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode rule
"coc-pairs
autocmd FileType tex let b:coc_pairs = [[$", "$"]]
autocmd FileType markdown let b:coc_pairs_disabled = ['`']

"leaderF
" dont show the help in normal mode
" let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>lf :LeaderfFunction!<CR>
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

" fzf
noremap <leader>gf :Files<CR>
noremap <leader>gb :Buffers<CR>
noremap <leader>gc :Colors<CR>
noremap <leader>gl :Lines<CR>
noremap <leader>gh :History<CR>
noremap <leader>gt :Tags<CR>
noremap <leader>gm :Marks<CR>
noremap <leader>gs :Snippets<CR>
noremap <leader>ga :Commands<CR>


"indentLine
nnoremap <silent><leader>i :IndentLinesToggle<CR>
let g:indentLine_char_list = ['|', '¦', '┆','┊'] 
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled=1

"coc-explorer
:nmap <space>e :CocCommand explorer<CR>
let g:coc_explorer_global_presets = {
\   'cexe': {
\       'root-uri': '~/cexe/',
\   },
\   'pythonexe': {
\       'root-uri': '~/pythonexe/',
\   },
\   'cppexe': {
\       'root-uri': '~/cppexe/',
\   },
\   '.vim': {
\      'root-uri': '~/.vim',
\   },
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 50,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

" Use preset argument to open it
nmap <space>ed :CocCommand explorer --preset .vim<CR>
nmap <space>es :CocCommand explorer --preset simplify<CR>
nmap <space>ec :CocCommand explorer --preset cexe<CR>
nmap <space>ep :CocCommand explorer --preset pythonexe<CR>
nmap <space>ea :CocCommand explorer --preset cppexe<CR>

" List all presets
nmap <space>el :CocList explPresets<CR>

"Nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'


" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#left_sep =  ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#syntastic#enabled = 1
" let g:airline#extensions#tagbar#enabled = 1
" let g:airline_section_b = '%strftime{"(%c")}'
" let g:airline_theme = 'solarized'
" let g:airline_theme = 'PaperColor'
" let g:airline_theme = 'pencil'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ☰''
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = ∄''
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Asynchronous Lint Engine
let g:ale_enabled = 1
let g:ale_disable_lsp = 0
" let g:ale_linters_explicit = 1
" let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
" let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_executable = 'gcc'
let g:ale_c_gcc_options = '-Wall -std=c99'
let g:ale_cpp_gcc_executable = 'g++'
let g:ale_cpp_gcc_options = '-Wall -std=c++14'
" let g:ale_c_cppcheck_options = ''
" let g:ale_cpp_cppcheck_options = ''

let g:ale_change_sign_column_color = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta
highlight clear ALEErrorSign
highlight clear ALEWarningSign
let g:ale_statusline_format = ['X %d', '? %d', '']
let g:ale_echo_msg_error_str='E'
let g:ale_echo_msg_warning_str='W'
let g:ale_echo_msg_format = '[%linter%] [%severity%]: %s'
nnoremap <leader>an :ALENextWrap<cr><esc>
nnoremap <leader>ap :ALEPreviousWrap<cr><esc>

let g:ale_linters = {
\   'c': ['ccls'],
\   'cpp': ['ccls'],
\   'javascript': ['eslint', 'flow', 'standard'],
\   'typescript': ['tslint', 'tsserver']
\ }

let g:ale_c_ccls_executable = 'ccls'
let g:ale_cpp_ccls_executable = 'ccls'
let g:ale_cpp_ccls_init_options = {
\   'cache':{
\       'directory':'/home/sz/.tmp/ccls',
\   }
\ }

" asynctasks
let g:asyncrun_open=8
let g:asyncrun_mode='term'
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml'] 
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
nnoremap <silent><F4> :AsyncRun -cwd=<root> cmake . <cr>
noremap <silent><f5> :AsyncTask file-run<cr>
noremap <silent><f9> :AsyncTask file-build<cr>
let g:asynctasks_term_rows = 20     
let g:asynctasks_term_cols = 80    

" coc config
let g:coc_global_extensions = [
    \ 'coc-lists',
    \ 'coc-clangd',
    \ 'coc-snippets',
    \ 'coc-tsserver',
    \ 'coc-eslint', 
    \ 'coc-prettier', 
    \ 'coc-json', 
    \ 'coc-explorer',
    \ ]

" coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <C-j> <Plug>(coc-snippets-expand-jump)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" always show signcolumns
set signcolumn=yes

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh() 
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" if has('patch8.1.1068')
"     " Use `complete_info` if your (Neo)Vim version supports it.
"     inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>":
"                 \ "\<C-g>u\<CR>"
" else
"     inoremap <expr> <cr> pumvisible() ? "\<C-n>" : "\<C-g>u\<CR>"
" endif

inoremap <expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>x  :<C-u>CocList extensions<cr>
" Show source.
nnoremap <silent> <space>r  :<C-u>CocList sources<cr>
" Show location.
nnoremap <silent> <space>l  :<C-u>CocList location<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"ctags
" set tags=./.tags;,.tags

"Neoformat

nnoremap <silent> <leader>nf :Neoformat<CR>
let g:neoformat_c_uncrustify= {
            \ 'exe': 'clang-format',
            \ 'args': ['-style="~/.clang-format"'],
            \ 'stdin': 1,
            \ }
" let g:neoformat_verbose = 1

"gutentags
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
" noremap <leader>ge 
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
