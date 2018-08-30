" " -------------------------------------------------------------------
" " Basic
" " -------------------------------------------------------------------

" " Save file
" nmap <C-S> :w!<CR>
" vmap <C-S> <Esc>:w!<CR>
" imap <C-S> <Esc>:w!<CR>i

" " Save and close the current buffer
" nmap ZQ :w<bar>bd<CR>
" vmap ZQ <Esc>:w<bar>bd<CR>

" " Close current buffer
" nmap ZZ :bd<CR>
" vmap ZZ <Esc>:bd<CR>

" " Приостановить процесс (свернуть)
" nmap <C-z> :sus<CR>
" vmap <C-z> :sus<CR>
" imap <C-z> :sus<CR>

" Закрыть приложение (если все файлы записаны)
nmap <F10> :qa<CR>
vmap <F10> <Esc>:qa<CR>
imap <F10> <Esc>:qa<CR>

" " -------------------------------------------------------------------
" " Navigation
" " -------------------------------------------------------------------

" " В начало\конец строки
" nnoremap , ^
" nnoremap . $

" " Сместить страницу ниже/выше
" nnoremap <S-j> <C-e>
" nnoremap <S-k> <C-y>

" " Сместить страницу левее/правее
" nnoremap <S-h> z<Right>
" nnoremap <S-l> z<Left>

" " Увеличить/Уменьшить число
" nnoremap + <C-a>
" nnoremap _ <C-x>

" " В начало след. слова/знака
" nnoremap w W
" nnoremap W w

" " В конец след. слова/знака
" nnoremap e E
" nnoremap E e

" " В начало пред. слова/знака
" nnoremap b B
" nnoremap B b

" " В начало пред./след. предложения
" nnoremap { (
" nnoremap } )

" " -------------------------------------------------------------------
" " Editing
" " -------------------------------------------------------------------

" " Перейти в режим вставки после текущего символа
" nnoremap I a
" vnoremap I <Esc>a

" " Перейти в режим вставки с начала строки
" nnoremap a I
" vnoremap a <Esc>I

" " Удалить перенос строки
" nmap <C-d> :join<CR>
" vmap <C-d> <Esc>:join<CR>
" imap <C-d> <Esc>:join<CR>i

" " Скопировать
" nnoremap c y
" vnoremap c y

" " Скопировать текущую строку
" nnoremap cc yy
" vnoremap cc yy

" " Скопировать до конца строки
" nnoremap C y$
" vnoremap C y$

" " Вырезать
" nnoremap y c<Esc>
" vnoremap y c<Esc>

" " Вырезать текущую строку
" nnoremap yy cc<Esc>
" vnoremap yy cc<Esc>

" " Вырезать до конца строки
" nnoremap Y C<Esc>
" vnoremap Y C<Esc>

" " Изменить регистр
" nnoremap " ~
" vnoremap " ~

" " Вставить текст из буффера после тек. позиции и очистить от знака перевода строки
" nnoremap p p<Esc>:%s/\r$//g<CR>
" vnoremap p p<Esc>:%s/\r$//g<CR>

" " Вставить текст из буффера до тек. позиции и очистить от знака перевода строки
" nnoremap P P<Esc>:%s/\r$//g<CR>
" vnoremap P P<Esc>:%s/\r$//g<CR>

" " Добавить новую строку вверху/внизу от тек. позиции
" nnoremap <Enter> o<Esc>
" nnoremap <C-o> O<Esc>

" " Отмена послед. изменения в режиме вставки
" inoremap <C-u> <Esc>ui

" " Переместить строку вверху/внизу от тек. позиции
" nnoremap <Leader>[ ddkP
" nnoremap <Leader>] ddjP

" " Выделить весь документ
" nnoremap <C-a> <esc>ggVG<CR>

" " -------------------------------------------------------------------
" " Windows
" " -------------------------------------------------------------------

" " Переместить курсор на след. окно
" nnoremap <Leader>wn <C-w><C-w>
" vnoremap <Leader>wn <C-w><C-w>

" " Переместить курсор на пред. окно
" nnoremap <Leader>wp <C-w><C-p>
" vnoremap <Leader>wp <C-w><C-p>

" " Поменять окна местами
" nnoremap <Leader>wr <C-w><C-x>
" vnoremap <Leader>wr <C-w><C-x>

" " Создать дубликат тек. буффера в отдел. окне по гориз.
" nnoremap <Leader>ws <C-w>s
" vnoremap <Leader>ws <C-w>s

" " Создать дубликат тек. буффера в отдел. окне по верт.
" nnoremap <Leader>wv <C-w>v
" vnoremap <Leader>wv <C-w>v

" " Закрыть текущее окно
" nnoremap <Leader>wc <C-w>c
" vnoremap <Leader>wc <C-w>c

" " Увеличить окно горизонтально
" nnoremap <Leader><Up> :resize +5<CR>
" vnoremap <Leader><Up> :resize +5<CR>

" " Уменьшить окно горизонтально
" nnoremap <Leader><Down> :resize -5<CR>
" vnoremap <Leader><Down> :resize -5<CR>

" " Увеличить окно вертикально
" nnoremap <Leader><Right> :vertical resize +5<CR>
" vnoremap <Leader><Right> :vertical resize +5<CR>

" " Уменьшить окно вертикально
" nnoremap <Leader><Left> :vertical resize -5<CR>
" vnoremap <Leader><Left> :vertical resize -5<CR>

" " -------------------------------------------------------------------
" " Tabs
" " -------------------------------------------------------------------

" " Следующий буффер
" map <Leader>. :bn<CR>
" nmap <Leader>. :bn<CR>
" imap <Leader>. <Esc>:bn<CR>i

" " Предыдущий буффер
" map <Leader>, :bp<CR>
" nmap <Leader>, :bp<CR>
" imap <Leader>, <Esc>:bp<CR>i

" " -------------------------------------------------------------------
" " Spellchecking
" " -------------------------------------------------------------------

" " Выбор языка
nnoremap sl :emenu Spell.<TAB>

menu Spell.Russian+English :setlocal spell spelllang=ru,en<CR>
menu Spell.Russian :setlocal spell spelllang=ru<CR>
menu Spell.English :setlocal spell spelllang=en<CR>
menu Spell.Disable :setlocal spell spelllang=:setlocal nospell<CR>

" " Показать окно выбора правки
" nnoremap ss  z=

" " Следующее/Предыдущее неправильное слово
" nnoremap sn ]s
" nnoremap sp [s

" " Поместить слово под курсором в словарь (правильное - good)
" nnoremap sg zg

" " Удалить слово под курсором в словарь (неправильное - wrong)
" nnoremap sw zw

" " -------------------------------------------------------------------
" " Other
" " -------------------------------------------------------------------

" " Поиск слова под курсором
" nnoremap <C-f> *

" " Запуск/Запись макроса
" nnoremap q @
" nnoremap Q q

" " Вызов коммандной строки
" nnoremap <leader>; :

" " Повтор предыдущего действия (изм. текста)
" nnoremap ' .

" " Вставить вывод из Bash
" nnoremap ! !!

" " Очистка подсветок поиска
" nnoremap <Leader><C-c>      :nohlsearch<CR>

" " Отключить отображение скрытых символов
" nnoremap <Leader>l :set list!<CR>

" " Смена раскладки (Ctrl + S)
" " inoremap <silent> <Leader>L <C-^>

" Вызов меню - изменения формата документа
nnoremap <F8> :emenu Encoding.<TAB>

menu Encoding.utf-8 :e ++enc=utf8<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>