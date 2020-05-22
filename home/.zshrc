#export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
#eval "$(rbenv init -)"
# Path to your oh-my-zsh installation.
export ZSH=/Users/lijun/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(git zsh-autosuggestions web-search)



# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
#source ~/git/emsdk/emsdk_env.sh

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
#
#
#
#
# ###########################custom##########################
#tmux source ~/.tmux.conf
alias help='tldr'
alias sb='sh build.sh'
alias relay='/Users/lijun/bin/relay_auto_login/relay'
alias vim='/usr/local/Cellar/macvim/8.1-153/MacVim.app/Contents/bin/vim'

#alias vim='/usr/local/bin/nvim'
#alias vi='/usr/local/bin/nvim'
export EDITOR='/usr/local/bin/vim'
alias -s c=c
alias -s js='node'
alias d='docker'
alias linux='docker start myLinux && docker attach myLinux'
alias d8='docker start d8 && docker attach d8'

export PAGER=most #main brew install most

c () {
    gcc $1;
    ./a.out;
    rm -rf ./a.out;
}


[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

alias gcc='gcc-4.9'
alias cc='gcc-4.9'
alias g++='g++-4.9'
alias c++='c++-4.9'


export PATH=/Users/lijun/bin/bin:/Users/lijun/n/bin:"$PATH"

#把老子ls 颜色整不见了，fixed by https://github.com/robbyrussell/oh-my-zsh/issues/5349#issuecomment-387210275
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
alias ls="gls --color=always"

export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

##Port
export PATH=/opt/local/bin:/opt/local/sbin:$PATH



# added by travis gem
#[ -f /Users/lijun/.travis/travis.sh ] && source /Users/lijun/.travis/travis.sh

#export NVM_DIR="$HOME/.nvm"
#  . "/usr/local/opt/nvm/nvm.sh"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
#brew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export BOOST_ROOT=/usr/local/opt/boost
export BOOST_LIBRARYDIR=/usr/local/opt/boost/lib
export fizz_DIR=/Users/lijun/Downloads/fizz-master/fizz/out
export OPENSSL_ROOT_DIR=/usr/local/Cellar/openssl/1.0.2q

#java
export JAVA_HOME='/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home'
export PATH=$PATH:$JAVA_HOME/bin
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

#ant
export PATH=$PATH:/Users/lijun/Downloads/apache-ant-1.10.5/bin

#gradle
export PATH=$PATH:/Users/lijun/Downloads/gradle-4.9/bin
export GRADLE_USER_HOME=/Users/lijun/.gradle

#android
export ANDROID_HOME=/Users/lijun/Library/Android/sdk
export PATH=${PATH}:/Users/lijun/Library/Android/sdk/platform-tools:/Users/lijun/Library/Android/sdk/tools

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT="/Users/lijun/Downloads/cocos2d-x-3.17.1/tools/cocos2d-console/bin"
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT="/Users/lijun/Downloads"
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT="/Users/lijun/Downloads/cocos2d-x-3.17.1/templates"
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT="/Users/lijun/Library/Android/sdk"
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

#export HTTP_PROXY=http://45.78.74.94:8080
#export HTTPS_PROXY=http://192.168.1.137:1087
#export NO_PROXY=localhost,127.0.0.1,10.96.0.0/12,192.168.99.1/24,192.168.99.101

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
