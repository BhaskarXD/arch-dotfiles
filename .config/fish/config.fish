function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive # Commands to run in interactive sessions can go here

    # No greeting
    set fish_greeting

    # Use starship
    starship init fish | source
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

    # Aliases
    alias clear "printf '\033[2J\033[3J\033[1;1H'" # fix: kitty doesn't clear properly
    alias celar "printf '\033[2J\033[3J\033[1;1H'"
    alias claer "printf '\033[2J\033[3J\033[1;1H'"
    alias ls 'eza --icons'
    alias pamcan pacman
    alias q 'qs -c ii'

end

# zoxide
zoxide init fish --cmd z | source

# starship prompt
#starship init fish | source

# fzf
fzf --fish | source

# Aliases
alias ls "eza --group-directories-first --color=auto"
alias ll "eza -lA --group-directories-first --icons"
alias la "eza -A --group-directories-first --icons"
alias lt "eza --tree --level=2 --group-directories-first"
alias llt "eza -lA --tree --group-directories-first --icons"

alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."

alias gs "git status"
alias ga "git add"
alias gc "git commit"
alias gca "git commit --amend"
alias gp "git push"
alias gpo "git push origin"
alias gl "git log --oneline --graph --decorate"
alias gco "git checkout"
alias gb "git branch"
alias config "git --git-dir=$HOME/.arch-dotfiles/ --work-tree=$HOME"

alias upd "sudo pacman -Syu"
alias yays "yay -Syu --noconfirm"
alias yai "yay -S"
alias yac "yay -Rns"

alias c clear
alias code "code ."
alias v nvim
alias vi nvim
alias vim nvim

alias cd z

# fnm (Node version manager)
fnm env --use-on-cd | source
