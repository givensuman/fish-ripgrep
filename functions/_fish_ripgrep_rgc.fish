# alias rgc 'rg --count $ripgrep_params $argv'
function _fish_ripgrep_rgc --wraps _fish_ripgrep_grep
    _fish_ripgrep_grep --count $argv
end
