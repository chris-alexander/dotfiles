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

  # Volta
  if test -d "$HOME/.volta/bin"
    fish_add_path "$HOME/.volta/bin"
   end

  # User-local binaries
  if test -d "$HOME/.local/bin"
    fish_add_path "$HOME/.local/bin"
  end

  # WSL: bridge Windows OpenSSH agent into WSL
  if set -q WSL_DISTRO_NAME
    if not set -q SSH_AUTH_SOCK
      if type -q wsl2-ssh-agent
        wsl2-ssh-agent 2>/dev/null | source
      end
    end
  end
end