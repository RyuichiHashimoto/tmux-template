#!/bin/bash

#set -o errexit  # Exit script if any command fails
#set -o nounset  # Exit script if undefined variable is used
#set -o pipefail # Exit script if any command in pipeline fails

_tmux_setup() {
    local curr_arg="${COMP_WORDS[COMP_CWORD]}"

    # If no argument is given, display both "four" and "three"
    if [[ $COMP_CWORD -eq 1 ]]; then
        COMPREPLY=( $( compgen -W 'four three default clear' -- "$curr_arg" ) )
    else
        # If an argument is specified, display the corresponding values only
        case "$curr_arg" in
            f*)
                COMPREPLY=( $(compgen -W 'four' -- "$curr_arg" ) )
                ;;
            d*)
                COMPREPLY=( $(compgen -W 'default' -- "$curr_arg" ) )
                ;;
            c*)
                COMPREPLY=( $(compgen -W 'clear' -- "$curr_arg" ) )
                ;;
            t*)
                COMPREPLY=( $(compgen -W 'three' -- "$curr_arg" ) )
                ;;
            *)
                COMPREPLY=()
                ;;
        esac
    fi
}

complete -F _tmux_setup tmux_setup

