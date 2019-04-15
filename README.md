# git bash prompt

If you've used git bash, you may have noticed that it displays what 
branch you are currently working on.  
This is objectively nice.  

```console
ahester57@lnx:~/my_project (dev)
$ _
```

To get a bash prompt like this, put this in your .bashrc, after any changes
are made to PS1.

```bash
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\033[32m\u\033[0m@\033[36m\h\033[0m:\033[31m\w\033[32m \$(parse_git_branch)\033[0m\n$ "

```

