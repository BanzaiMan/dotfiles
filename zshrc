# RVM
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

# Colors
autoload -U colors
colors
setopt prompt_subst

# Prompt
local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"

PROMPT='
%{$fg[red]%}%{$bg[white]%}%~%{$reset_color%}
${smiley} %{$reset_color%} '

RPROMPT='%{$fg[white]%} $(~/.rvm/bin/rvm-prompt u v p s g)$(/usr/local/bin/vcprompt -f " [%n:%m%u%b%r]")%{$reset_color%}'

# Show completion on first TAB
#setopt menucomplete

# set up PATH and such
DEFAULT_PATH=$PATH
export PATH=/usr/local/sbin:/usr/local/bin:$DEFAULT_PATH:$HOME/personal/bin:/usr/local/jruby/bin:/usr/local/ruby19/bin:/usr/local/ruby18/bin:/usr/local/postgresql/9.1/bin
unset DEFALUT_PATH

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

# aliases
alias grep='grep --colour'

# perlbrew
if [ -f $HOME/perl5/perlbrew/etc/bashrc ]; then
  source $HOME/perl5/perlbrew/etc/bashrc
  alias pb='perlbrew switch'
  alias pl='perlbrew list'
fi


## history options
setopt HIST_IGNORE_DUPS
setopt INC_APPEND_HISTORY
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
