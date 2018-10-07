#
# Paths for all Computers
#

#  Add the ~/bin/ directory for all users
export PATH=$PATH:~/bin

#
# OS Specific Paths
#

# OS X Aliases
if [[ $CURRENT_OS == 'OS X' ]]; then
    #
    # Prefixed Paths
    #

    # Prefix /usr/local/bin for brew
    export PATH=/usr/local/bin:$PATH

    # Rbenv
    export PATH=~/.rbenv/shims:$PATH

    #
    # Normal Paths
    #

    # MIT-Scheme
    export MITSCHEME_LIBRARY_PATH=/usr/local/lib/mit-scheme-c/
    # Nmap
    export PATH=$PATH:/Users/Davis/.nmap
    #  Django
    export PATH=$PATH:/Library/Python/2.5/site-packages/django/bin
    #  MacPorts
    export PATH=$PATH:/opt/local/bin
    #  Add the bin/Mac directory
    export PATH=$PATH:~/bin/Mac
    # Add all npm packages
    export PATH=$PATH:/usr/local/share/npm/bin
    # Add Postgres.app
    export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

    # Add Java jars (like checkstyle, etc)
    export PATH=$PATH:~/jars

    # Custom Go path & add to path
    export GOPATH=~/.go
    export PATH=$PATH:~/.go/bin
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # Prefix /usr/local/bin for brew if it exists
    if hash brew 2>/dev/null; then
        export PATH="$HOME/.linuxbrew/bin:$PATH"
        export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"
    fi

    #  Add the bin/Arch directory
    export PATH=$PATH:~/bin/Arch
    export PATH=$PATH:~/bin/appengine
    export PATH=$PATH:~/.cabal/bin
    export PATH=$PATH:~/bin/

    # CentOS Paths
    if [[ $DISTRO == 'CentOS' ]]; then
        # Add LaTeX to path
        export PATH=$PATH:/usr/local/texlive/2013/bin/x86_64-linux
    fi

    #
    # User Specific Aliases
    #

    if [[ $USER == 'davis' ]]; then
        # Home Linux
    elif [[ $USER == 'davisjos' ]]; then
        # Work Linux

        # Android SDK Tools
        export PATH=$PATH:~/Programming/SDKs/tools
        # Android SDK Platform Tools
        export PATH=$PATH:~/Programming/SDKs/platform-tools
        # Jars
        export PATH=$PATH:~/jars
    fi
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    #
fi
