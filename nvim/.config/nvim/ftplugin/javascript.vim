setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal smarttab
setlocal expandtab

set commentstring=//\ %s

let b:ale_fixers = ['prettier', 'eslint']
