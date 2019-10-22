# Mathison Projects Bash Nav

## Description

The objective is to consolidate a number of bash commands into ready and quick to use functions to handle a customized environment.

## Installation

- Download the script into your root
```sh
$ git clone https://github.com/Divinityfound/mp-bash-nav.git > ~/.mp
```

- Add it as a source in your startup script (Eg: ~/.bash_profile, ~/.bashrc)

OPTION 1:
```sh
$ echo "source ~/.mp/mp.sh" >> ~/.bash_profile
```

OPTION 2 (My environment):
```sh
$ echo "source ~/.mp/mp.sh" >> ~/.bashrc
```

Debugging:

Sometimes, the above command will end up outputting into your bootup the entire line. Simply go into your file and update the line to be inside of .bashrc or .bash_profile to be:

```sh
source ~/.mp/mp.sh
```

## Commands

Once you start the program, to escape it, simply press CTRL + C. It loops back in on itself due to the need to run a number of processes in sequence.

```sh
Usage:

$ mp [ -h | help ]                                 # Displays Help Command
$ mp [ QuickDir | quickdir ] [ go | add | remove ] # Goes to/adds/removes directory
$ mp [ Git | git ] [ push | pull | add ]           # Pushes/Pulls/Adds git Repository
$ mp [ Template | template ] cp                    # Copies a template file to current directory
$ mp [ Logs | logs ] [ clear | add | remove ]      # Manages known memory hogs
```

### If you wish to know more about me...

Feel free to email me at jacob@mathisonprojects.com

Please give me a follow or subscribe in the following:

|Twitter|Github|Youtube|Twitch|Linkedin|Personal Site|
| ----- | ---- | ----- | ---- | ------ | ----------- |
|[MathisonProject](https://twitter.com/MathisonProject)|[Divinityfound](https://github.com/Divinityfound)|[Jacob Mathison](https://www.youtube.com/channel/UCNNxB1TRbdJxE_y51sJb9DA)|[MathisonProjects](http://twitch.tv/mathisonprojects)|[Jacob Mathison](https://www.linkedin.com/in/jacob-a-mathison-62359912/)|[Mathison Projects](http://mathisonprojects.com)|
