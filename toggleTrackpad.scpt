set didRunSystemPreferences to get running of application "System Preferences"

tell application "System Preferences"
	set current pane to pane "com.apple.preference.trackpad"
	tell application "System Events" to tell tab group 1 of window "トラックパッド" of application process "System Preferences"
		click checkbox 1
	end tell
end tell

if not didRunSystemPreferences then
	quit application "System Preferences"
end if
