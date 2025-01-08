##### Default Configs #####
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

##### Program Configs #####
# PHP #
alias pas="php artisan serve"
alias pakg="php artisan key:generate"
alias pam="php artisan migrate"
alias pamfs="php artisan migrate:fresh --seed"
alias nrd="npm run dev"
alias nrb="npm run build"

# Homebrew #
export PATH=/opt/homebrew/bin:$PATH
export PATH="/opt/homebrew/sbin:$PATH"

##### User Configs #####
# Jekyll #
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.3.5

alias blgn='create_blog_with_date'
alias blgs="bundle exec jekyll serve --livereload"
alias blgb="cd ~/code/personal/np.com.aaryanpoudel; jekyll build;"
#alias blggp="git add .; git commit -m ;git push origin master;"

# Nvim #
alias vim=nvim
alias vi=nvim
alias uuvi="nvim --headless "+Lazy! sync" +qa"

# Git #
alias gpl="git pull"
alias ga="git add ."
alias gacm="git commit -a -m"
alias gp="git push"

# Generic #
alias uu="brew update && brew upgrade"
alias ee="exit"
alias cdz="vi ~/.zshrc"
alias uuzs="source ~/.zshrc;"
alias uuz="vi ~/.zshrc; source ~/.zshrc;"
alias cdd="cd ~/.dotfiles"

alias cdc="cd ~/code/"
alias cdn="cd ~/code/notes"
alias cdb="cd ~/code/personal/np.com.aaryanpoudel/_posts"
alias cdp="cd ~/code/notes/playground/"


##### Custom Scripts #####
# fn() to create blog.md with date prefix
create_blog_with_date() {
  	# Check if a filename is provided
  	if [ -z "$1" ]; then
    		echo "Usage: create_blog_with_date <filename>"
    	return 1
  	fi
  	local current_date=$(date +%Y-%m-%d)
  	local blogname_suffix=$(basename "$1" | sed 's/\..*//')
  	local new_blogname="${current_date}-${blogname_suffix}.md"
  	touch "$new_blogname"
  	vi $new_blogname
}