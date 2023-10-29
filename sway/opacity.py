import i3ipc

ipc = i3ipc.Connection()
prev_focused = None

for window in ipc.get_tree():
	if window.focused:
		prev_focused = window
	else:
		window.command('opacity 0.8')

def on_window_focus(ipc, focused):
	global prev_focused
	if focused.container.id != prev_focused.id:
		if "Chrome" in focused.container.name: 
			focused.container.command('opacity 1')
		else:
			focused.container.command('opacity 0.95')
		if "Chrome" in prev_focused.name:
			prev_focused.command('opacity 1')
		else:
			prev_focused.command('opacity 0.9')
		prev_focused = focused.container

ipc.on("window::focus", on_window_focus)
ipc.main()