#!/bin/bash

#set -o errexit  # Exit script if any command fails
#set -o nounset  # Exit script if undefined variable is used
#set -o pipefail # Exit script if any command in pipeline fails

#!/bin/bash

_ide() {
    local curr_arg="${COMP_WORDS[COMP_CWORD]}"

    # もし引数が無い場合、"four"と"three"の両方を表示する
    if [[ $COMP_CWORD -eq 1 ]]; then
        COMPREPLY=( $( compgen -W 'four three default clear' -- "$curr_arg" ) )
    else
        # 引数が指定された場合、該当する値のみを表示する
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

complete -F _ide ide
