# load zgen
source "${HOME}/.zgen/zgen.zsh"


# if the init script doesn't exist
if ! zgen saved; then
	# oh my zsh plugins here
	zgen oh-my-zsh
	zgen oh-my-zsh plugins/git
	zgen oh-my-zsh plugins/sudo
	zgen oh-my-zsh plugins/asdf
	zgen oh-my-zsh plugins/extract
	zgen oh-my-zsh plugins/command-not-found
	zgen oh-my-zsh plugins/docker
	zgen oh-my-zsh plugins/docker-compose
	zgen oh-my-zsh plugins/minikube
	zgen oh-my-zsh plugins/kubectl
	zgen oh-my-zsh plugins/sudo

	# skaffold plugins
	# zgen load todie/skaffold.plugin.zsh

	# specify theme here
	zgen oh-my-zsh themes/arrow

	# generate the init script from plugins above
	zgen save
fi


# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit


alias kubectl="minikube kubectl --"
