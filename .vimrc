set tabstop=4
set expandtab
set nocompatible              " be iMproved, required                           
set encoding=utf-8                                                              
set colorcolumn=80                                                              
set scrolloff=8                                                                 
set cursorline                                                                  
set t_Co=256
syntax on
colorscheme desert
autocmd InsertEnter * hi Normal guibg=#4D4D4D
autocmd InsertLeave * hi Normal guibg=#333333
filetype off                  " required                                        

" set the runtime path to include Vundle and initialize                         
set rtp+=~/.vim/autoload/Vundle.vim                                               
call vundle#begin()                                                             
" " alternatively, pass a path where Vundle should install plugins                                                                               
" "call vundle#begin('~/some/path/here')                                        
"                                                                               
" " let Vundle manage Vundle, required                                          
Plugin 'VundleVim/Vundle.vim'                                                   
"Plugin 'vim-airline/vim-airline'                                               
call vundle#end()                                                               
filetype plugin indent on                                                       
" To ignore plugin indent changes, instead use:                                 
" filetype plugin on                                                            
"                                                                               
" Brief help                                                                    
" :PluginList       - lists configured plugins                                  
" :PluginInstall    - installs plugins; append `!` to update or just            
" :PluginUpdate                                                                 
" :PluginSearch foo - searches for foo; append `!` to refresh local cache       
" :PluginClean      - confirms removal of unused plugins; append `!` to         
" auto-approve removal                                                          
"                                                                               
" see :h vundle for more details or wiki for FAQ                                
" Put your non-Plugin stuff after this line                                     
"                                                                               
map <C-n> :NERDTreeToggle<CR>         

set laststatus=2                                                                
set statusline+=%#warningmsg#                                                   
set statusline+=%{SyntasticStatuslineFlag()}                                    
set statusline+=%*                                                              
                                                                                
let g:syntastic_always_populate_loc_list = 1                                    
let g:syntastic_auto_loc_list = 1                                               
let g:syntastic_check_on_open = 0                                               
let g:syntastic_check_on_wq = 0                                                 
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes':   [],'passive_filetypes': [] }
noremap <C-e> :SyntasticCheck<CR>                                               
noremap <C-f> :SyntasticToggleMode<CR>                                          
                                                                                
" to disable warnings"                                                          
let g:syntastic_quiet_messages={'level':'warnings'}                             
"                                                                               
" to regenerate the cscope database                                             
" the current directory should be the root path of the project                  
"nmap <F12> :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files<CR>
"  \:!cscope -b -i cscope.files -f cscope.out<CR>                               
"  \:cs reset<CR>                                                               
"                                                                               
nmap <F12> <Plug>CscopeDBInit                                                   
                                                                                
let g:cscopedb_big_file = '/opt/cscope/cscope_dynamic_bdb'                                                                                       
let g:cscopedb_small_file = '/opt/cscope/cscope_dynamic_sdb'                    
let g:cscopedb_auto_init = 1                                                    
let g:cscopedb_extra_files = 0                                                  
let g:cscopedb_src_dirs_file = 1                                                
let g:cscopedb_resolve_links = 1                                                
let g:cscopedb_lock_file = '/opt/cscope/lockfile'                               
let g:statusline_cscope_flag = ""                                               
set statusline=[%n]%<%f\ %h%m%r\ %=\                                            
let g:statusline_cscope_flag = ""                                               
set statusline=[%n]%<%f\ %h%m%r\ %=\                                            
set statusline+=%(\ [%{g:statusline_cscope_flag}]\ \ \ %)                       
set statusline+=%-14.(%l,%c%V%)\ %P                                             
function! Cscope_dynamic_update_hook(updating)                                  
    if a:updating                                                               
        let g:statusline_cscope_flag = "C"                                      
    else                                                                        
        let g:statusline_cscope_flag = ""                                       
    endif                                                                       
    execute "redrawstatus!"                                                     
endfunction                                                                     
call Cscope_dynamic_update_hook(0)                                              
                                                                                
" word-wise cut copy and paste over the current word                            
map <A-v> viw"+gPb                                                              
map <A-c> viw"+y                                                                
map <A-x> viw"+x                                                                
                                                                                
" airline configuration                                                         
let g:airline#extensions#tabline#enabled = 1                                    
let g:airline#extensions#tabline#left_sep = ' '                                 
let g:airline#extensions#tabline#left_alt_sep = '|'                             
let g:airline_powerline_fonts = 1                                               
let g:airline_theme = 'dracula'      

" vimdiff colourscheme                                                         
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
set tags=./tags;/,tags;/
let g:easytags_dynamic_files = 0
let g:easytags_always_enabled = 0
let g:easytags_include_members = 1
let b:easytags_auto_highlight = 0 


