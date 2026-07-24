# Base passthroughs
function sys \
	--wraps systemctl \
	--description 'systemctl wrapper'
	systemctl $argv
end

function sysu \
	--wraps systemctl \
	--description 'systemctl --user wrapper'
	systemctl --user $argv
end

# --- System-wide actions ---

function sysst \
	--wraps 'systemctl start' \
	--description 'Start a system service'
	systemctl start $argv
end

function syssp \
	--wraps 'systemctl stop' \
	--description 'Stop a system service'
	systemctl stop $argv
end

function sysr \
	--wraps 'systemctl restart' \
	--description 'Restart a system service'
	systemctl restart $argv
end

function syss \
	--wraps 'systemctl status' \
	--description 'Show system service status'
	systemctl status $argv
end

function syse \
	--wraps 'systemctl enable' \
	--description 'Enable a system service'
	systemctl enable $argv
end

function sysd \
	--wraps 'systemctl disable' \
	--description 'Disable a system service'
	systemctl disable $argv
end

function sysdr \
	--wraps 'systemctl daemon-reload' \
	--description 'Reload systemd daemon'
	systemctl daemon-reload $argv
end

function sysed \
	--wraps 'systemctl edit' \
	--description 'Edit a system service'
	systemctl edit $argv
end

function sysre \
	--wraps 'systemctl reload' \
	--description 'Reload a system service'
	systemctl reload $argv
end

function sysc \
	--wraps 'systemctl cat' \
	--description 'Show systemd unit file'
	systemctl cat $argv
end

# --- User (--user) actions ---

function sysust \
	--wraps 'systemctl --user start' \
	--description 'Start a user service'
	systemctl --user start $argv
end

function sysusp \
	--wraps 'systemctl --user stop' \
	--description 'Stop a user service'
	systemctl --user stop $argv
end

function sysur \
	--wraps 'systemctl --user restart' \
	--description 'Restart a user service'
	systemctl --user restart $argv
end

function sysus \
	--wraps 'systemctl --user status' \
	--description 'Show user service status'
	systemctl --user status $argv
end

function sysue \
	--wraps 'systemctl --user enable' \
	--description 'Enable a user service'
	systemctl --user enable $argv
end

function sysud \
	--wraps 'systemctl --user disable' \
	--description 'Disable a user service'
	systemctl --user disable $argv
end

function sysudr \
	--wraps 'systemctl --user daemon-reload' \
	--description 'Reload user systemd daemon'
	systemctl --user daemon-reload $argv
end
