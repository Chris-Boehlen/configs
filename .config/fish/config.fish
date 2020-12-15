# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

abbr -a p 'sudo pacman'
abbr -s up 'sudo pacman -Syu'
abbr -a n 'nvim'
