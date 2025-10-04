# Python and django aliases
alias p="python"
alias pm="python manage.py"
alias pmr="python manage.py runserver"
alias pu="python -m unittest"
alias killpyc="find . -name \"*.pyc\" -delete"

## Colorize the output ##
alias grep="grep --color=auto"

## Use a long listing format ##
alias ll="ls -lah"

# list open ipv4 ports
alias listportlisteners="lsof -Pnl +M -i4"

# delete all branches that have been merged into master
alias gitclean='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'

alias dc='docker-compose'

alias fixbluetooth='sudo pkill bluetoothd'
