# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
alias please=sudo
alias obsidian="OBSIDIAN_USE_WAYLAND=1 obsidian -enable-features=UseOzonePlatform -ozone-platform=wayland > /dev/null &"
alias firefox="MOZ_ENABLE_WAYLAND=1 firefox-bin > /dev/null &"
export LC_ALL=en_US.utf8
#export PATH="~/.cargo/bin:~/gittrash/eww/target/release:${PATH}"

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]]; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.
