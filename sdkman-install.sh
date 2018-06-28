#!/bin/zsh

if ! [ -d ~/.sdkman ]; then
    curl -s "https://get.sdkman.io" | bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"
    sdk install java
    sdk install groovy
    sdk install gradle
    sdk install maven
fi

