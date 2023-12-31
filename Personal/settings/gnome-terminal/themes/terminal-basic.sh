#!/usr/bin/env bash

export PROFILE_NAME="Terminal Basic"

export COLOR_01="#000000"           # Black (Host)
export COLOR_02="#990000"           # Red (Syntax string)
export COLOR_03="#00a600"           # Green (Command)
export COLOR_04="#999900"           # Yellow (Command second)
export COLOR_05="#0000b2"           # Blue (Path)
export COLOR_06="#b200b2"           # Magenta (Syntax var)
export COLOR_07="#00a6b2"           # Cyan (Prompt)
export COLOR_08="#bfbfbf"           # White

export COLOR_09="#666666"           # Bright Black
export COLOR_10="#e50000"           # Bright Red (Command error)
export COLOR_11="#00d900"           # Bright Green (Exec)
export COLOR_12="#e5e500"           # Bright Yellow
export COLOR_13="#0000ff"           # Bright Blue (Folder)
export COLOR_14="#e500e5"           # Bright Magenta
export COLOR_15="#00e5e5"           # Bright Cyan
export COLOR_16="#e5e5e5"           # Bright White

export BACKGROUND_COLOR="#ffffff"   # Background
export FOREGROUND_COLOR="#000000"   # Foreground (Text)

export CURSOR_COLOR="#7f7f7f" # Cursor

# | ===========================================================================
# | Apply Colors
# | ===========================================================================
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Gogh-Co/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
