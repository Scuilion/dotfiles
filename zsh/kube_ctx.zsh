kube_ctx(){
    if [ $commands[kubectl] ]; then
        source <(kubectl completion zsh)
        cur_ctx=$(kubectl config current-context 2> /dev/null)
        #if [ $? -gt 0 ]; then
        #    echo ""
        #else
        #    ns=$(kubectl config view -o=jsonpath="{.contexts[?(@.name==\"${cur_ctx}\")].context.namespace}")
        #    echo " %{$fg[cyan]%}$cur_ctx/$ns%{$reset_color%} "
        #fi
    fi
}
