" Required:
call dein#end()

" Automatically installs plugins on startup
if dein#check_install()
  call dein#install()
endif
