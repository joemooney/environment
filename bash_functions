cmds_status() {
	cd $HOME/github/environment
	git status
}

cmds_publish() {
	cd $HOME/github/environment   && \
	git pull                      && \
	git commit -am 'cmds_publish' && \
	git status
}

vip() {
	vi $HOME/github/environment/bash_functions
	. $HOME/github/environment/bash_functions
}
