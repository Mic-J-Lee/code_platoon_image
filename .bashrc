# /root/.bashrc: executed by bash(1) for non-login shells. Login shells use ~/.bash_profile


# Set git name and email
git config --global user.name "Mona Lisa"
git config --global user.email "email@example.com"

# Keep username/password stored in container
git config --global credential.helper store

# Jon's colors
function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
function git_branch {
  [[ $(parse_git_branch) != "" ]] && echo "($(parse_git_branch))"
}
export PS1="\[\e[36m\]\u\[\e[m\]@\[\e[32m\]\h:\[\e[33;1m\]\w\[\e[m\]\$(git_branch) $ "


# Make `ls` colorized:
export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'

# Additional `ls` helpers below, uncomment if you like
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'


# To start postgresql server automatically, uncomment the line below:
# service postgresql start
# The line below needs to be run only once
# su postgres -c "createuser -s root"

