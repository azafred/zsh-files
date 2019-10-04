#
# Aliases for all Computers
#

# Builtin aliases
alias ll='ls -lhtr'
alias la='ls -a'
alias lla='ls -alhtr'
alias cl='clear'
# Some cd aliases
alias back='cd -'

# ......
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias .......='cd ../../../../../../'
alias ........='cd ../../../../../../../'
alias .........='cd ../../../../../../../../'
alias ..........='cd ../../../../../../../../../'
alias ...........='cd ../../../../../../../../../../'
alias ............='cd ../../../../../../../../../../../'

# ZSH Global Aliases
alias -g L=' | less'
alias -g T=' | tail -20'
alias -g NUL=' > /dev/null 2>&1'

# I like to be safe...
# alias rm='rm -i'

# derp derp
alias mkdirp='mkdir -p'

# Alias Git, moved most other aliases to ~/.gitconfig
# For some reason, Git doesn't like capitalized aliases. Some must remain.
alias g='git'
alias gp='git pull'
alias gP='git push'

# Racket: load Readline
alias racketrl='racket -il readline'

#
# OS Specific Aliases
#

# OS X Aliases
if [[ $CURRENT_OS == 'OS X' ]]; then
    # Hidden files
    alias showhiddenfiles='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
    alias hidehiddenfiles='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'

    alias 'kb-disable'='sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/'
    alias 'kb-enable'='sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/'


    # Custom search script
    alias ebook='locates ~/EBooks '

    alias rebuild-open-with='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -seed /Applications{,/Utilities}'

    # Journal Alias
    alias journal='vim ~/Documents/Journal/`date "+%Y"`/`date "+%B"`/`date "+%d-%A"`.txt'

    # EBooks
    alias tex4ebook='texlua ~/Library/texmf/tex/latex/tex4ebook/tex4ebook.lua'


    #
    # Application aliases
    #
    alias vine='open -a Vine\ Server'
    alias ss='/System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine &'

    # Open from command line
    alias finder='open -a Finder '
elif [[ $CURRENT_OS == 'Linux' ]]; then
    #
    # Global Linux
    #

    # Misc Aliases
    alias ls='ls --color=auto'

    # MVim == GVim on Linux
    alias mvim='gvim'

    # Extensions
    alias -s avi=vlc
    alias -s html=$BROWSER
    alias -s pdf=epdfview
    alias -s txt=$EDITOR
    alias -s text=$EDITOR

    # Images
    alias -s png=feh
    alias -s jpeg=feh
    alias -s jpg=feh
    alias -s gif=feh

    # Source Extensions
    alias -s hs=$EDITOR
    alias -s c=$EDITOR

fi
