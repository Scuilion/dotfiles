kube_ctx(){
    cur_ctx=$(kubectl config current-context)
    ns=$(kubectl config view -o=jsonpath="{.contexts[?(@.name==\"${cur_ctx}\")].context.namespace}")
    echo " %{$fg[cyan]%}$cur_ctx/$ns%{$reset_color%} "
}
