# Path to your oh-my-zsh installation.
export ZSH=/Users/nt13157/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, docker, git-extras, jsontools, pip, per-directory-history, screen, web-search)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"

export PATH="/anaconda3/bin:$PATH"
eval $(/usr/libexec/path_helper -s)


export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PATH="/usr/local/Cellar/graphviz/2.38.0/bin:$PATH"
export PATH="~/software/sox:$PATH"

export MPTK_CONFIG_FILENAME="/usr/local/mptk/path.xml"
                                                                
alias mount_beast_shared="sshfs -o rw beast:/data/shared ~/beast_shared -o gid=20 -o idmap=user -o volname=beast_shared"
alias mount_beast_data="sshfs -o rw beast:/data/ipython_notebooks ~/beast_data -o gid=20 -o idmap=user -o volname=beast_data"
alias mount_beast_home="sshfs -o rw beast:/home/ntwomey ~/beast_home -o gid=20 -o idmap=user -o volname=beast_home"

alias mount_shg_www="sshfs -o rw shg:/var/www/html ~/shg_www -o idmap=user -o volname=ssh_www"

alias tunnel_ipython="ssh -N -f -L 9999:localhost:9999 beast"
alias tunnel_vnc="ssh -X -N -C -f -L 5902:localhost:5901 beast"
alias tunnel_r="ssh -N -C -f -L 8787:localhost:8787 beast"

alias tunnel_beast_postgres="ssh -N -C -f -L 5433:localhost:5432 beast"
alias tunnel_beast_mongo="ssh -N -C -f -L 27018:localhost:27017 beast"
alias tunnel_strauss_mongo="ssh -N -C -f -L 27019:localhost:27017 strauss"
alias tunnel_shg_mongo="ssh -N -C -f -L 27021:localhost:27017 shg"
alias tunnel_shg_deploy_mongo="ssh -N -C -f -L 27022:localhost:27017 shg_deploy"

alias tunnel_shg_dallan="ssh -N -C -f -L 27021:localhost:27017 db12166@10.70.18.7"

alias tunnel_shgnew_supervisor="ssh -N -C -f -L 5000:localhost:5000 shg"

alias tunnel_kaiju_mongo="ssh -N -C -f -L 27029:localhost:27017 strauss"

# alias tunnel_shg_mongo="ssh -f beast -L 27020:10.70.18.13:27017 -N"
# alias tunnel_pi="ssh -f pi -L 27021:localhost:27017 -N"
alias tunnels=". ~/setup_tunnels.sh"
alias ssh_aws=". ~/.ssh/aws_nialltwomey/ssh_aws.sh"
alias subl="open -a /Applications/Sublime\ Text.app"

# added by Anaconda3 5.1.0 installer
export PATH="~/miniconda3/bin:$PATH"
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

# added by Miniconda3 4.7.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/nt13157/miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/nt13157/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/nt13157/miniconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/nt13157/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

conda deactivate

