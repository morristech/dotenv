# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/kioko/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# ---------------------------------
#           ZSH THEMES
# ---------------------------------
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

# ---------------------------------
#           POWERLEVEL9K FONTS
# ---------------------------------
POWERLEVEL9K_MODE='nerdfont-complete'
# POWERLEVEL9K_MODE='awesome-fontconfig'
# POWERLEVEL9K_MODE='awesome-patched'


# ---------------------------------
#      POWERLEVEL9K CUSTOMIZATION
# ---------------------------------
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time root_indicator context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv virtualenv vi_mode)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time background_jobs ram virtualenv rbenv rvm)
POWERLEVEL9K_STATUS_VERBOSE=false
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="red"
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="white"
POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="015"


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
COMPLETION_WAITING_DOTS="true"

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
plugins=(
        git
        cp
        dirhistory
        sudo vim-gitgutter
        zsh-syntax-highlighting
        npm
        node
     )

DEFAULT_USER=`whoami`
#prompt_context() {}

source $ZSH/oh-my-zsh.sh

# User configuration

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export TERM="screen-256color"

# Auto-Suggestion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# The next line enables shell command completion for gcloud.
source '/Users/kioko/google-cloud-sdk/completion.zsh.inc'
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down]]]]"


#   ---------------------------
#          DIRECTORY ALIASES
#   ---------------------------
alias la='ls -la'
alias ll='ls -la'
alias ls='ls -GFh'
alias llc='colorls -r -1'
alias lls='colorls -r'
alias lf='colorls -r -1 -sf'
alias ld='colorls -r -1 -sd'
alias lc='colorls -r'
# ls alias for color-mode
alias lh='ls -lhaG'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# grep with color
alias grep='grep --color=always'

alias copy='rsync -ah --progress'
alias mkcd='function _mkcd(){mkdir "$1"; cd "$1"}; _mkcd'


#   -------------------------------------
#          LOCK & SLEEP ALIASES
#   -------------------------------------
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias hibernate='sudo pmset -a hibernatemode 25'
alias sleep='sudo pmset -a hibernatemode 0'
alias safesleep='sudo pmset -a hibernatemode 3'
alias smartsleep='sudo pmset -a hibernatemode 2'

alias tmux="tmux -2"

#   -------------------------------------
#          YOUTUBE-DL ALIASES
#   -------------------------------------
#YouTube DL MP3
alias youtube="youtube-dl --extract-audio --audio-format mp3"
#alias ydl="youtube-dl -x -f bestaudio --audio-quality 0 --audio-format m4a -i -v -o '%(title)s.%(ext)s'"
alias ydl="youtube-dl -x -f bestaudio --audio-quality 0 --audio-format m4a -o '%(title)s.%(ext)s'"

#   -------------------------------------
#          SPF13 VIM
#   -------------------------------------

#Spf13 Update
alias spf13='cd /Users/kioko/.spf13-vim-3 && git pull vim +BundleInstall! +BundleClean +q'
alias bi='vim +BundleInstall! +BundleClean +q'
# Show/ Hide Hidden Files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

#   -------------------------------------
#          ZSH MODIFICATION
#   -------------------------------------
# refresh shell
#alias reload='source ~/.zshrc’
alias reload='source ~/.zshrc'
alias addAlias='vim ~/.zshrc'
alias updateAlias='source ~/.zshrc'


#   -------------------------------------
#         CLEAR ITERM LOGS
#   -------------------------------------
#clear iTermLog
alias iTermClean='sudo rm -rf /var/log/asl/*.asl'

# ---------------------------------------
#           POSTGRES ALIASES
# ---------------------------------------
alias startPostgres='brew services start postgresql'
alias stopPostgres='brew services stop postgresql'

# -----------------------------------------------
#           KUBECTL ALIASES
#------------------------------------------------
alias kl='kubectl logs -f' #logs
alias kw='kubectl get po -w'  #watch pods
alias kp='kubectl proxy'

# git commamands simplified
alias gs='git status'
alias gcl='git clone'
alias gch='git checkout'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gr='git rebase'
alias gm='git merge'
alias gma='git merge --abort'
alias gb='git branch'
alias ga='git add -A'
alias gpl='git pull --rebase'
alias gpu='git push'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# ---------------------------------------
#           PYTHON ALIASES
# ---------------------------------------
#Python Alias
alias venv='mkvirtualenv --python=/usr/local/bin/python3'
alias python='python3'


#   ---------------------------
#        NETWORKING ALIASES
#   ---------------------------

alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ---------------------------
#          OTHER ALIASES
#   ---------------------------

alias ssu='sudo -E -s'
alias ipadd='ifconfig | grep "inet " | grep -v 127.0.0.1'
alias wk='adb forward tcp:7777 tcp:7777'
alias uninstall='adb uninstall'
alias debugCert='keytool -exportcert -list -v -alias androiddebugkey -keystore ~/.android/debug.keystore'


# Update Alias
alias yadr='cd ~/.yadr && git pull --rebase && rake update'

# Delete Docker Images
alias rmi='~/scripts/remove_images.sh'

alias dh='/Users/kioko/Vault/Andela/development-toolkit/dev-env help'
alias dl='/Users/kioko/Vault/Andela/development-toolkit/dev-env list'
alias dd='/Users/kioko/Vault/Andela/development-toolkit/dev-env demolish'
alias ds='/Users/kioko/Vault/Andela/development-toolkit/dev-env start'

# Open Tiny Terminal
alias tiny='tiny-care-terminal'


# Code Climate
alias climate='CODECLIMATE_DEBUG=1 CONTAINER_TIMEOUT_SECONDS=1800 ENGINE_MEMORY_LIMIT_BYTES=1000000000 codeclimate analyze'

# --------------------------------
#    METASPLOIT ALIASES
# --------------------------------

alias msfconsole='/opt/metasploit-framework/bin/msfconsole'
alias metasploit='cd /opt/metasploit-framework/bin/'

#   ---------------------------
#       ENVIROMENT MANAGEMENT
#   ---------------------------

#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
PATH="/usr/local/Cellar/python3/3.7/bin:${PATH}"
export PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/kioko/Library/Android/sdk/platform-tools:$PATH"
export ANDROID_HOME="/Users/kioko/Library/Android/sdk"
export PATH="$PATH:~/.composer/vendor/bin"
export GOPATH="$HOME/Vault/Andela/microservices"
export PATH="$PATH:$GOPATH/bin"
export EXOPLAYER_ROOT="/Users/kioko/Vault/Symbiotic/Android/ExoPlayer"
export FFMPEG_EXT_PATH="${EXOPLAYER_ROOT}/extensions/ffmpeg/src/main"
export NDK_PATH="/Users/kioko/Vault/Development/android-ndk-r15c"
export HOST_PLATFORM="darwin-x86_64"
export PATH=$TOOLCHAIN/bin:$PATH


export COLOR_LIGHT_GRAY='\e[0;37m'
export HISTCONTROL=ignoredups:erasedups
#shopt -s histappend
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

export TERM=xterm-256color
export GREP_OPTIONS='--color=auto'
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
LS_COLORS='di=33:fi=0:ln=95:pi=5:so=5:bd=5:cd=5:or=37:mi=0:ex=31:*.rpm=90'

# Mac Ports
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

export PATH=/usr/local/bin:$PATH
export EDITOR='subl -w'

# Java Home
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home"

# Maven Home Path
export M2_HOME=/Users/kioko/Library/Tomcat/apache-maven-3.2.3
export PATH=$PATH:$M2_HOME/bin


export PATH="/usr/local/opt/llvm/bin:$PATH"



#   ---------------------------
#       PROCESS MANAGEMENT
#   ---------------------------

#   findPid: find out the pid of a specified process
#   -----------------------------------------------------
#       Note that the command name can be specified via a regex
#       E.g. findPid '/d$/' finds pids of all processes with names ending in 'd'
#       Without the 'sudo' it will only find processes of the current user
#   -----------------------------------------------------
findPid () { lsof -t -c "$@" ; }

#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

#   topForever:  Continual 'top' listing (every 10 seconds)
#   -----------------------------------------------------
alias topForever='top -l 9999999 -s 10 -o cpu'

#   ttop:  Recommended 'top' invocation to minimize resources
#   ------------------------------------------------------------
#       Taken from this macosxhints article
#       http://www.macosxhints.com/article.php?story=20060816123853639
#   ------------------------------------------------------------
alias ttop="top -R -F -s 10 -o rsize"

#   my_ps: List processes owned by my user:
#   ------------------------------------------------------------
my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }

#   ---------------------------------------
#         SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------

alias mountReadWrite='/sbin/mount -uw /'    # mountReadWrite:   For use when booted into single-user

#   cleanupDS:  Recursively delete .DS_Store files
#   -------------------------------------------------------------------
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

#   finderShowHidden:   Show hidden files in Finder
#   finderHideHidden:   Hide hidden files in Finder
#   -------------------------------------------------------------------
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

#   cleanupLS:  Clean up LaunchServices to remove duplicates in the "Open With" menu
#   -----------------------------------------------------------------------------------
alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

#    screensaverDesktop: Run a screensaver on the Desktop
#   -----------------------------------------------------------------------------------
alias screensaverDesktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'

#   ---------------------------------------
#         WEB DEVELOPMENT
#   ---------------------------------------

alias apacheEdit='sudo vim /etc/httpd/httpd.conf'      # apacheEdit:       Edit httpd.conf
alias apacheRestart='sudo apachectl graceful'           # apacheRestart:    Restart Apache
alias editHosts='sudo vim /etc/hosts'                  # editHosts:        Edit /etc/hosts file
alias herr='tail /var/log/httpd/error_log'              # herr:             Tails HTTP error logs
alias apacheLogs="less +F /var/log/apache2/error_log"   # Apachelogs:   Shows apache error logs
httpHeaders () { /usr/bin/curl -I -L $@ ; }             # httpHeaders:      Grabs headers from web page

#   ---------------------------------------
#           GRADLE
#   ---------------------------------------

# Adding Gradle to system path
#export GRADLE_HOME=/usr/local/gradle/gradle-2.10
#PATH=$GRADLE_HOME/bin:$PATH

# Turning on the Gradle daemon by default
#export GRADLE_OPTS="-Dorg.gradle.daemon=true"

#   ---------------------------------------
#           PYTHON DEVELOPMENT
#   ---------------------------------------
export PATH=/usr/local/share/python:$PATH
export PATH
export WORKON_HOME=~/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh



#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/kioko/.sdkman"
[[ -s "/Users/kioko/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/kioko/.sdkman/bin/sdkman-init.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kioko/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/kioko/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kioko/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/kioko/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


# ---------------------------------------
#     TINY CARE CONFIGURATION
# ---------------------------------------



# List of accounts to read the last tweet from, comma separated
# The first in the list is read by the party parrot.
export TTC_BOTS='tinycarebot,selfcare_bot,magicrealismbot'

# List of folders to look into for `git` commits, comma separated.
export TTC_REPOS='~/Vault/GreyWorm,~/Vault/Andela'

# Location/zip code to check the weather for. Both 90210 and "San Francisco, CA"
# _should_ be ok (the zip code doesn't always work -- use a location
# first, if you can). It's using weather.service.msn.com behind the curtains.
export TTC_WEATHER='Nairobi'

# Set to false if you're an imperial savage. <3
export TTC_CELSIUS=true

# Unset this if you _don't_ want to use Twitter keys and want to
# use web scraping instead.
export TTC_APIKEYS=true

# Refresh the dashboard every 20 minutes.
export TTC_UPDATE_INTERVAL=25


# Note: in tiny-terminal-care < 1.0.7, the recommended variables for the Twitter
# API keys were the ones before. As of 1.0.8, they are deprecated
# (because the names are too generic), but will still be supported
# until the next major version.

export PATH=$PATH:


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# Docker Version Manager
[ -f /usr/local/opt/dvm/dvm.sh ] && . /usr/local/opt/dvm/dvm.sh

# Visual Studio Code Editor
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}






# added by travis gem
[ -f /Users/kioko/.travis/travis.sh ] && source /Users/kioko/.travis/travis.sh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
