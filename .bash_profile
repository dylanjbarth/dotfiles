
# GI Path
export PYTHONPATH=~/hacking/growthintel:$PYTHONPATH

# DISABLE ansible cows
export ANSIBLE_NOCOWS=1

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,bash_aliases,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Append sbin to path
PATH=$PATH:/usr/local/sbin


# Add virtualenv paths
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/hacking
source /usr/local/bin/virtualenvwrapper.sh

# COWSAY
COWPATH="$COWPATH:$HOME/.cowsay"

# Helper functions
function tunnel {
    echo "ssh -f <server_name> -L <local_port>:localhost:<remote_port> -N"
    ssh -f $1 -L $2:localhost:$3 -N
}

function psgrep {
    ps aux | grep $1
}

function cs {
    cd $1;
    ls;
}

function sshhosts {
    cat ~/.ssh/config | grep 'Host ';
}

function sshdetail {
    grep -i -A 4 $1 ~/.ssh/config
}

export NVM_DIR="/Users/dylan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
