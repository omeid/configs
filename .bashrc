# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi



export VISUAL=vi # for <C-x><C-e> command line editing.
export LESS='-X -R'; #Stop less from clearing the screen after exit. helpful for man pages and other...
export MAKEFLAGS=' -j4'
# User specific aliases and functions



# Auto tmux on SSH
#if [ "$PS1" != "" -a "${STARTED_TMUX:-x}" = x -a "${SSH_TTY:-x}" != x ]
#then
#        STARTED_TMUX=1; export STARTED_TMUX
#        sleep 1
#        ( (tmux -2 has-session -t remote && tmux -2 attach-session -t remote) || (tmux -2 new-session -s remote) ) && exit 0
#        echo "tmux failed to start"
#fi

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
shopt -s globstar
shopt -s autocd
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}


function ms_to_human_readable {
 milis=$(($1 % 1000));
 seconds=$(($1 / 1000));
 echo "$seconds seconds $milis ms";
}


function timer_miliseconds {
 echo $(($(date +%s%N)/1000000));
}

function timer_start {
 #cols=${COLUMNS:-$(tput cols)}
 #printf "\033[30m\033(0%*s\033(B\033[0;0m" "$cols" "" | tr " " q;
 timer=${timer:-$(timer_miliseconds)}
 }

function timer_stop {
 timer_show=$(( $(timer_miliseconds) - $timer))
 unset timer
}

function PROMPT_COMMAND_FUNC(){
 timer_stop;
 timer_readable=$(ms_to_human_readable $timer_show);
# padding_size=$(( $cols /2 - ${#timer_readable}/2 - 2));
# padding_left=$(printf '\033[30m\033(0%*su\033(B\033[0;34m' "$padding_size" '' | tr ' ' q);
# padding_right=$(printf '\033[30m\033(0t%*s\033(B\033[0;34m' "$padding_size" '' | tr ' ' q);
# echo -e $padding_left $timer_readable $padding_right;

}

trap 'timer_start' DEBUG
PROMPT_COMMAND=PROMPT_COMMAND_FUNC
export PS1='
 \[\e[1;34m\]ET: $timer_readable
 \u@\h:\w$(__git_ps1 "/(%s)")
 \[\033[0;33m\]$\[\033[00m\] '


alias less='/usr/share/vim/vim72/macros/less.sh'
#bind Space:magic-space

alias gitl='git log --pretty=oneline --graph --decorate --all'

 [[ $SSH_CLIENT ]] && cd "$(cat ~/.ssh/last_login_dir 2> /dev/null)";

# Go setup
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
