function fish_user_key_bindings
  bind \e\[1\;9C forward-word
  bind \e\[1\;9D backward-word
  bind \e\[dw backward-kill-word
end

function portkill --description "Kill process running on port"
  echo $argv
  kill -9 "(lsof -t -i:$argv)"
end

function gs --description "Show git status" 
	git status
end

function gpus --description "Shorthand for git push"
    git push $argv
end

function gpom --description "Shorthand for git push origin master"
    git push origin master
end

function gau --description "git add -u then git status"
    git add -u
    git status
end

function gsr --description "git svn rebase"
    git svn rebase
end

function gsd --description "git svn dcommit"
    git svn dcommit
end

function mkcd --description "Create directory and cd to it" 
	mkdir $argv
	cd $argv
end

function cpbranch --description "Copy current branch name to clipboard"
	git rev-parse --abbrev-ref HEAD | pbcopy
end

function gpush --description "Runs git push origin <your_current_branch>"
    git rev-parse --abbrev-ref HEAD | xargs git push origin
end

function subl --description "Runs fish"
    /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl &
end

function dmac --description "Runs docker-machine"
    docker-machine $argv
end

function d --description "Runs docker"
    docker $argv
end

function n --description "Alias for npm"
    npm $argv
end

function y --description "Alias for yarn"
    yarn $argv
end

# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

