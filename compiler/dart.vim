if exists("current_compiler")
  finish
endif
let current_compiler = "dart"

CompilerSet makeprg=dart\ analyze\ --format=machine
CompilerSet errorformat=%*[^\\|]\\|%*[^\\|]\\|%*[^\\|]\\|%f\\|%l\\|%c\\|%*[^\\|]\\|%m
