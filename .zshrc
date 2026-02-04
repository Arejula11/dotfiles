# Lines configured by zsh-newuser-install
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arejula11/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# alias
alias ls='ls --color=auto'
     #alias dir='dir --color=auto'
     #alias vdir='vdir --color=auto'
 
     alias grep='grep --color=auto'
     alias fgrep='fgrep --color=auto'
     alias egrep='egrep --color=auto'

#some more ls aliases 
   alias ll='ls -alF' 
   alias la='ls -A' 
   alias l='ls -CF' 
   alias goMaster='cd ~/Documents/Master/'
   alias skain='open -a "Google Chrome" https://www.twitch.tv/skain'
   alias are-dev='open -a "Google Chrome" http://localhost:4321'

#Prompt

function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print 
$NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '('$branch') '
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst


PROMPT='%B%(?.%F{green}%n .%F{red}%n )%f%b %B%F{27}%1~%f%b ' #%B%F{226}$(git_branch_name)%f%b%# '
RPROMPT="%T"

#Allow history
SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history





