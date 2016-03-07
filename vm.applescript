#!/usr/bin/env osascript
on run argv
    if (count of argv) is 0 then
        log "Usage: vm.applescript <ssh user and host, e.g. fred@asdf.org>"
    else
        tell application "Terminal"
            -- Activate it.
            activate

            set targetWindow to window 1
            repeat 5 times
                tell application "System Events" to tell process "Terminal" to keystroke "t" using command down
                delay 1
                do script "ssh " & (item 1 of argv) in targetWindow
            end repeat
        end tell
    end if
end run

