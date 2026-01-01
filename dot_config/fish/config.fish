if status is-interactive
  # Disable greeting
  set fish_greeting

  # Ensure SHELL reflects fish
  set -x SHELL (command -s fish)

  # Safer grep defaults
  alias grep "grep --color=auto"

  # Starship prompt
  if command -s starship >/dev/null
    starship init fish | source
  end
end
