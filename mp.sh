#!/usr/bin/env bash

_quickdir() {
	if [ ! -z $1 ]; then
		if [ $1 = "go" ]; then
			~/.mp/QuickDir/go.sh
		elif [ $1 = "add" ]; then
			~/.mp/QuickDir/add.sh
		elif [ $1 = "remove" ]; then
			~/.mp/QuickDir/remove.sh
		fi
	else
		_help
	fi
}

_git() {
	if [ ! -z $1 ]; then
		if [ $1 = "go" ]; then
			~/.mp/Git/push.sh
		elif [ $1 = "pull" ]; then
			~/.mp/Git/pull_repo.sh
		elif [ $1 = "add" ]; then
			~/.mp/Git/add_repo.sh
		fi
	fi
}

_template() {
	if [ ! -z $1 ]; then
		echo 'hi'
	fi
}

_logs() {
	if [ ! -z $1 ]; then
		if [ $1 = "clear" ]; then
			~/.mp/Logs/clear.sh
		elif [ $1 = "remove" ]; then
			~/.mp/Logs/remove.sh
		elif [ $1 = "add" ]; then
			~/.mp/Logs/add.sh
		fi
	fi
}

_laravelChmod() {
	chmod -R 755 ./.
	chmod -R 777 storage/ bootstrap/
}

_run() {
	echo
	if [ ! -z $1 ]; then
		if [ $1 = "-h" ] || [ $1 = "help" ]; then
			_help
		elif [ $1 = "QuickDir" ] || [ $1 = "quickdir" ]; then
			_quickdir $2
		elif [ $1 = "Git" ] || [ $1 == "git" ]; then
			_git $2
		elif [ $1 = "Template" ] || [ $1 == "template" ]; then
			_template $2
		elif [ $1 = "Logs" ] || [ $1 == "logs" ]; then
			_logs $2
		elif [ $1 = "LaravelChmod" ] || [ $1 == "laravelchmod" ]; then
			_laravelChmod
		fi
	fi
	echo
	_help
}

_help() {
	echo "Usage:"
	echo -e "\e[33mmp \e[94m[ -h | help ]                            \e[0m# Displays Help Command"
	echo -e "\e[33mmp \e[94mQuickDir [ go | add | remove ]           \e[0m# Goes to/adds/removes directory"
	echo -e "\e[33mmp \e[94mGit [ push | pull | add ]                \e[0m# Pushes/Pulls/Adds git Repository"
	echo -e "\e[33mmp \e[94mTemplate cp                              \e[0m# Copies a template file to current directory"
	echo -e "\e[33mmp \e[94m[ Logs | logs ] [ clear | add | remove ] \e[0m# Manages known memory hogs"
	echo -e "\e[33mmp \e[94m[ LaravelChmod | laravelchmod]           \e[0m# Sets the proper permissions for Laravel"
	echo
	echo -e "\e[36mWhat command do you wish to run?\e[0m"
	echo -n "Enter a command, and press [ENTER] or hit CTRL + C: "
	read -a SELECTION

	if [ ! -z ${SELECTION[0]} ] && [ -z ${SELECTION[1]} ]; then
		_run ${SELECTION[0]}
	elif [ ! -z ${SELECTION[1]} ]; then
		_run ${SELECTION[0]} ${SELECTION[1]}
	fi
}

_placeholder() {
	echo "Not available yet. This is a placeholder."
}

mp(){
	if [ ! -z $1 ] && [ -z $2 ]; then
		_run $1
	elif [ ! -z $2 ]; then
		_run $1 $2
	else
		_help
	fi
}