# Created by newuser for 5.4.2
alias vim='nvim'
alias pvim='pipenv run nvim'
init_pipenv() {
   echo "Setting up pipenv environment"
   pipenv install --three
   # get name of environment and remove checksum for pretty name
   venv_name=$(basename -- $(pipenv --venv))
   venv_prettyname=$(echo $venv_name | cut -d '-' -f 1)
}
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
