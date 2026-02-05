# alias rgl 'rg --files-with-matches $ripgrep_params $argv'
function _fish_ripgrep_rgl --wraps _fish_ripgrep_grep
    _fish_ripgrep_grep --files-with-matches $argv
end
