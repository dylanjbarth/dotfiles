# Python and django aliases
alias p="python"
alias pm="python manage.py"
alias pmr="python manage.py runserver"
alias pu="python -m unittest"
alias killpyc="find . -name "*.pyc" -print0 | xargs -I{} -0 rm {}"

## Colorize the output ##
alias grep="grep --color=auto"

## Use a long listing format ##
alias ll="ls -lah"

# https://github.com/vdemedes/gifi
alias npm="gifi"