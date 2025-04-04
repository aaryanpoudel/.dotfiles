##### Default Configs #####
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

##### Program Configs #####
# PHP #
alias cpl="composer create-project laravel/laravel"
alias pas="php artisan serve"
alias pakg="php artisan key:generate"
alias pam="php artisan migrate"
alias pamfs="php artisan migrate:fresh --seed"
alias npmi="npm install"
alias npmrd="npm run dev"
alias npmrb="npm run build"

# LLMs #
#alias python="python3"
#alias pip="pip3"
alias llm-serve=" cd ~/code/.py/open-webui && source ~/code/.py/open-webui/bin/activate && open-webui serve"
alias llm='llm-serve ; sleep 5 ; open "http://localhost:8080/"'

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
alias uuvi="nvim --headless '+Lazy! sync' +qa"

# Git #
alias gpl="git pull"
alias ga="git add ."
alias gacm="git commit -a -m"
alias gp="git push"

# Generic #
alias uu="brew update && brew upgrade && uuvi"
alias ee="exit"
alias cdz="vi ~/.zshrc"
alias uuzs="source ~/.zshrc;"
alias uuz="vi ~/.zshrc; source ~/.zshrc;"
alias cdd="cd ~/.dotfiles"

alias cdpn="cd ~/code/playground/crashcourse && vi laravel11-1hr-notes.md"
alias z="zoxide"
alias cdc="cd ~/code/"
alias cdn="cd ~/code/notes"
alias cdb="cd ~/code/personal/np.com.aaryanpoudel/_posts"
alias cdp="cd ~/code/playground/"
alias cdt="tree -L 2"

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

#VMs and SSH
export TERM=xterm
alias sshubu="ssh ubuvm@192.168.64.3"

# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/array/Library/Application Support/Herd/config/php/84/"
export NVM_DIR="/Users/array/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"
export PATH="/Users/array/Library/Application Support/Herd/bin/":$PATH

alias pma="cd /opt/homebrew/share/phpmyadmin/ ; php -S 127.0.0.1:8000"

