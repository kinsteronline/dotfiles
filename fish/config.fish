
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
set -gx EDITOR nvim

if status --is-interactive
  source ~/.config/fish/abbrs.fish
  source ~/.config/fish/aliases.fish
end
