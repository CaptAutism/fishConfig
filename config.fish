if status is-interactive
    # Commands to run in interactive sessions can go here
end

set  -gx PATH $PATH $HOME/.cargo/bin

function start_tmux
    if type tmux > /dev/null
        #if not inside a tmux session, and if no session is started, start a new session
        if test -z "$TMUX" ; and test -z $TERMINAL_CONTEXT
            tmux -2 new-session
        end
    end
end

start_tmux
