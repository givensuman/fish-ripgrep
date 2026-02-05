# alias rga 'rg --no-ignore $ripgrep_params $argv'
function _fish_ripgrep_rga --wraps _fish_ripgrep_grep
    _fish_ripgrep_grep --no-ignore $argv
end
