#-- START ZCACHE GENERATED FILE
#-- GENERATED: Wed 19 Jun 2019 07:43:32 AM MDT
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/home/destin/dotfiles/zsh/.zsh/antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/home/destin/dotfiles/zsh/.zsh/antigen/bundles/zsh-users/zsh-completions /home/destin/dotfiles/zsh/.zsh/antigen/bundles/zsh-users/zsh-autosuggestions /home/destin/dotfiles/zsh/.zsh/antigen/bundles/zdharma/fast-syntax-highlighting /home/destin/dotfiles/zsh/.zsh/antigen/bundles/zlsun/solarized-man /home/destin/dotfiles/zsh/.zsh/antigen/bundles/changyuheng/zsh-interactive-cd /home/destin/dotfiles/zsh/.zsh/antigen/bundles/urbainvaes/fzf-marks /home/destin/dotfiles/zsh/.zsh/antigen/bundles/mafredri/zsh-async) path+=(/home/destin/dotfiles/zsh/.zsh/antigen/bundles/zsh-users/zsh-completions /home/destin/dotfiles/zsh/.zsh/antigen/bundles/zsh-users/zsh-autosuggestions /home/destin/dotfiles/zsh/.zsh/antigen/bundles/zdharma/fast-syntax-highlighting /home/destin/dotfiles/zsh/.zsh/antigen/bundles/zlsun/solarized-man /home/destin/dotfiles/zsh/.zsh/antigen/bundles/changyuheng/zsh-interactive-cd /home/destin/dotfiles/zsh/.zsh/antigen/bundles/urbainvaes/fzf-marks /home/destin/dotfiles/zsh/.zsh/antigen/bundles/mafredri/zsh-async)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/home/destin/.zsh/antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "" ]]; then
  ZSH=""; ZSH_CACHE_DIR=""
fi
#--- BUNDLES BEGIN
source '/home/destin/dotfiles/zsh/.zsh/antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/home/destin/dotfiles/zsh/.zsh/antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/home/destin/dotfiles/zsh/.zsh/antigen/bundles/zdharma/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh';
source '/home/destin/dotfiles/zsh/.zsh/antigen/bundles/zlsun/solarized-man/solarized-man.plugin.zsh';
source '/home/destin/dotfiles/zsh/.zsh/antigen/bundles/changyuheng/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh';
source '/home/destin/dotfiles/zsh/.zsh/antigen/bundles/urbainvaes/fzf-marks/fzf-marks.plugin.zsh';
source '/home/destin/dotfiles/zsh/.zsh/antigen/bundles/mafredri/zsh-async/async.plugin.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/zdharma/fast-syntax-highlighting.git / plugin true' 'https://github.com/zlsun/solarized-man.git / plugin true' 'https://github.com/changyuheng/zsh-interactive-cd.git / plugin true' 'https://github.com/urbainvaes/fzf-marks.git / plugin true' 'https://github.com/mafredri/zsh-async.git / plugin true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/home/destin/.zsh/antigen/bundles/zsh-users/zsh-completions//' '/home/destin/.zsh/antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/home/destin/.zsh/antigen/bundles/zsh-users/zsh-autosuggestions//' '/home/destin/.zsh/antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/home/destin/.zsh/antigen/bundles/zdharma/fast-syntax-highlighting//' '/home/destin/.zsh/antigen/bundles/zdharma/fast-syntax-highlighting///fast-syntax-highlighting.plugin.zsh' '/home/destin/.zsh/antigen/bundles/zlsun/solarized-man//' '/home/destin/.zsh/antigen/bundles/zlsun/solarized-man///solarized-man.plugin.zsh' '/home/destin/.zsh/antigen/bundles/changyuheng/zsh-interactive-cd//' '/home/destin/.zsh/antigen/bundles/changyuheng/zsh-interactive-cd///zsh-interactive-cd.plugin.zsh' '/home/destin/.zsh/antigen/bundles/urbainvaes/fzf-marks//' '/home/destin/.zsh/antigen/bundles/urbainvaes/fzf-marks///fzf-marks.plugin.zsh' '/home/destin/.zsh/antigen/bundles/urbainvaes/fzf-marks///init.zsh' '/home/destin/.zsh/antigen/bundles/mafredri/zsh-async//' '/home/destin/.zsh/antigen/bundles/mafredri/zsh-async///async.plugin.zsh')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
