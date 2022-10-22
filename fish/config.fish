if status is-interactive
  fish_vi_key_bindings
  bind -M insert -m default jk backward-char force-repaint

  # Commands to run in interactive sessions can go here
  starship init fish | source
end

alias lv="lvim"
