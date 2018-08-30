" Установка Plug
if has('nvim')
    if (!isdirectory(expand("$HOME/.local/share/nvim/site/autoload/plug.vim")))
        call system(expand("mkdir -p $HOME/.local/share/nvim/site/autoload/"))
        call system(expand("wget -O $HOME/.local/share/nvim/site/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"))
    endif
else
    if (!isdirectory(expand("$HOME/.vim/autoload/plug.vim")))
        call system(expand("mkdir -p $HOME/.vim/autoload/"))
        call system(expand("wget -O $HOME/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"))
    endif
endif

source $HOME/.vim/config/plugins.vimrc
source $HOME/.vim/config/general.vimrc
source $HOME/.vim/config/function.vimrc
source $HOME/.vim/config/keyboard.vimrc