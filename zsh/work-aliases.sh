alias emberssl='ember s --ssl --ssl-key ~/.tls/imtapps-active.key --ssl-cert ~/.tls/imtapps-active.crt'
alias mrssl="./manage.py dev runsslserver --key ~/.tls/imtapps-active.key --certificate ~/.tls/imtapps-active.crt"
alias dart_dev="dart run dart_dev"
alias ddevt="dart run dart_dev test"
alias cdwork="cd ~/dev/go_workspace/src/github.com/Workiva/"
alias cddpc="cd ~/dev/go_workspace/src/github.com/Workiva/doc_plat_client"
alias cdskaardb="cd ~/dev/go_workspace/src/github.com/Workiva/skaardb"
alias cdwcontent="cd ~/dev/go_workspace/src/github.com/Workiva/wContent"
alias cdtrans="cd ~/dev/go_workspace/src/github.com/Workiva/wTranslate"
alias cdwcrdt="cd ~/dev/go_workspace/src/github.com/Workiva/wCRDT"
alias gt="go test"
alias gpt="GO111MODULE=off gopherjs test -v --tags=jstest"
alias gptr='GO111MODULE=off gopherjs test -v --tags=jstest --run $1'

alias makeinitserve='make ready -j && make serve'
alias makebindserve='make bindings min=false local=true && make serve'
alias makeinitbindserve='make ready -j && make bindings min=false local=true && make serve'
