export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=' -p /usr/bin/python3 '
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
alias python='python3'

if [ -e /home/rick/.nix-profile/etc/profile.d/nix.sh ]; then . /home/rick/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
