#!/usr/bin/env fish

if not command -q powerprofilesctl
    exit 0
end

if test -z "$NOCTALIA_BATTERY_PERCENT"
    echo "Error: NOCTALIA_BATTERY_PERCENT environment variable is not set."
    exit 1
end

set battery_level (math "$NOCTALIA_BATTERY_PERCENT" 2>/dev/null)

if test -z "$battery_level"
    echo "Error: Invalid battery percentage value: $NOCTALIA_BATTERY_PERCENT"
    exit 1
end

set current_profile (powerprofilesctl get)

if test $battery_level -lt 15
    if test "$current_profile" != "power-saver"
        powerprofilesctl set power-saver
    end
end

if test $battery_level -ge 25
    if test "$current_profile" != "balanced"
        powerprofilesctl set balanced
    end
end

