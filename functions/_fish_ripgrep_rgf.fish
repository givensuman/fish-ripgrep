# alias rgf 'rg --files $ripgrep_params $argv'
function _fish_ripgrep_rgf --wraps _fish_ripgrep_grep
    _fish_ripgrep_grep --files $argv
end
