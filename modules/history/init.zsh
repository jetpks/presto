#
# Sets history options and defines history aliases.
#
# Authors:
#   Robby Russell <robby@planetargon.com>
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Variables
#

HISTFILE="${ZDOTDIR:-$HOME}/.zsh_history"       # The path to the history file.
HISTSIZE=66699                   # The maximum number of events to save in the internal history.
SAVEHIST=999666999                   # The maximum number of events to save in the history file.

#
# Options
#

setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_LEX_WORDS

setopt NO_SHARE_HISTORY             # Share history between all sessions.
setopt NO_HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt NO_HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt NO_HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt NO_HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt NO_HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt NO_HIST_BEEP                 # Beep when accessing non-existent history.

#
# Aliases
#

# Lists the ten most used commands.
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
