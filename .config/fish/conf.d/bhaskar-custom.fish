# Personal fish config — end-4 dots never touches conf.d files it doesn't own
# Mirrors the zsh config for consistent muscle memory across shells

if status is-interactive

    # ── Tool inits ──────────────────────────────────────────────────────────
    zoxide init fish --cmd z | source
    fzf --fish | source
    fnm env --use-on-cd | source

    # ── Navigation ──────────────────────────────────────────────────────────
    alias cd z
    alias .. "cd .."
    alias ... "cd ../.."
    alias .... "cd ../../.."

    # ── eza (better ls) ─────────────────────────────────────────────────────
    alias ls "eza --group-directories-first --icons"
    alias ll "eza -lA --group-directories-first --icons"
    alias la "eza -A --group-directories-first --icons"
    alias lt "eza --tree --level=2 --group-directories-first"
    alias llt "eza -lA --tree --group-directories-first --icons"

    # ── Editor ──────────────────────────────────────────────────────────────
    alias v nvim
    alias vi nvim
    alias vim nvim
    alias c clear
    alias code "code ."

    # ── Git shortcuts ────────────────────────────────────────────────────────
    alias gs "git status"
    alias ga "git add"
    alias gc "git commit"
    alias gca "git commit --amend"
    alias gp "git push"
    alias gpo "git push origin"
    alias gl "git log --oneline --graph --decorate"
    alias gco "git checkout"
    alias gb "git branch"

    # ── Dotfiles bare repo ───────────────────────────────────────────────────
    alias config "git --git-dir=$HOME/.arch-dotfiles/ --work-tree=$HOME"

    # ── Package managers ─────────────────────────────────────────────────────
    alias upd "sudo pacman -Syu"
    alias yays "yay -Syu --noconfirm"
    alias yai "yay -S"
    alias yac "yay -Rns"

end
