# `rg` wrapper with parameter handling
function _fish_ripgrep_grep --wraps rg
    if set -q ripgrep_params; and test -n "$ripgrep_params"
        set -l params (string split ' ' -- $ripgrep_params)
        command rg $params $argv
    else
        command rg --smart-case \
            --hidden \
            --follow \
            --no-heading \
            $argv
    end
end

if not command -q rg
    echo "ripgrep is not installed but you're"
    echo "sourcing the fish plugin for it"

    return 1
end

# Handle dumb terminal case
if test "$TERM" = dumb
    echo "you are sourcing the fish plugin for ripgrep"
    echo "in a dumb terminal, which won't support it"

    return 1
end

# Main alias
alias rgrep (command -v grep)
alias rg _fish_ripgrep_grep
alias grep _fish_ripgrep_grep
# Convenience aliases
alias rga _fish_ripgrep_rga
alias rgf _fish_ripgrep_rgf
alias rgi _fish_ripgrep_rgi
alias rgl _fish_ripgrep_rgl
alias rgc _fish_ripgrep_rgc

function _fish_ripgrep_install --on-event fish-ripgrep_install
end

function _fish_ripgrep_uninstall --on-event fish-ripgrep_uninstall
    functions --erase _fish_ripgrep_grep
    functions --erase grep
    functions --erase rgrep

    functions --erase rga
    functions --erase rgf
    functions --erase rgi
    functions --erase rgl
    functions --erase rgc
    functions --erase rgt
    functions --erase rgj
    functions --erase rgp
    functions --erase rgr

    set --erase ripgrep_params
end

function _fish_ripgrep_update --on-event fish-ripgrep_update
    _fish_ripgrep_uninstall
    _fish_ripgrep_install
end
