if exists("current_compiler")
  finish
endif
let current_compiler = "typescript"

CompilerSet makeprg=tsc\ --noEmit
CompilerSet errorformat=%f(%l\\,%c):\ %t%*[^:]:\ %m
