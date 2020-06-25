# plugin for timewarrior
#
# this currently only includes aliases, but an attempt at completion shopuld follow
#

alias tw=timew

alias tws='timew summary'
alias twsi='timew summary :ids'
alias twsy='timew summary :yesterday'
alias twsw='timew summary :week'

alias twa='timew start'
alias two='timew stop'
alias twc='timew continue'
alias twt='timew track'
alias twl='timew lengthen'
alias twsh='timew shorten'
alias twm='timew modify'
alias twma='timew modify start'
alias twmo='timew modify end'
alias twrs='timew resize'
alias twz='timew undo'
alias twd='timew delete'

# twct == timewarrior change tag
function twct(){
    ITEMS=()
    TAGS=()
    for a in "$@"; do
        case $a in
            @*)
                ITEMS+=("$a")
                ;;
            *)
                TAGS+=("$a")
                ;;
        esac
    done

    if [ $#TAGS -ne 2 ]; then
        echo 'Too few or too many tags'
        return
    fi
    if [ $#ITEMS -lt 1 ]; then
        echo 'To few ids'
        return
    fi

    for item in "$ITEMS"; do
        timew untag $item $TAGS[1]
        timew tag $item $TAGS[-1]
    done
    timew summary
}
