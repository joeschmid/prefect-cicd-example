_prefect_cicd_example_completion() {
    COMPREPLY=( $( env COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   _PREFECT-CICD-EXAMPLE_COMPLETE=complete $1 ) )
    return 0
}

complete -F _prefect_cicd_example_completion -o default prefect-cicd-example;
