# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -la'
alias cls='clear'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cpwd='pwd|tr -d "\n"|pbcopy'
alias ip="curl icanhazip.com"
alias countfiles='ls -la -1 | wc -l'
alias ff='file=$(fzf --select-1 --exit-0); [ -n "$file" ] && code "$file"'




case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7 winget
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
