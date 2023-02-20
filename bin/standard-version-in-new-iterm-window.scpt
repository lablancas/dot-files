on run argv
	set repoPath to (item 1 of argv)
	tell application "iTerm"
		set newWindow to (create window with default profile)
		tell current session of newWindow
			write text "cd " & quoted form of repoPath & " && npx standard-version"
		end tell
	end tell
end run
