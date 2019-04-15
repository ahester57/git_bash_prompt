
# Put this at the bottom of your ~/.bashrc

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\033[32m\u\033[0m@\033[36m\h\033[0m:\033[31m\w\033[32m \$(parse_git_branch)\033[0m\n$ "

