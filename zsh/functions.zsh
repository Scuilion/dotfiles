function vnc() {
  local ip="${1:-$(pbpaste)}"
  echo "Connecting to $ip..."
  /Applications/VNC\ Viewer.app/Contents/MacOS/vncviewer "$ip" &
}

gcm() {
  emulate -L zsh
  local msg="$*"

  if [[ -z "$msg" ]]; then
    echo "Usage: gcm <your commit message>"
    return 1
  fi

  local branch
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [[ $? -ne 0 ]]; then
    echo "Not inside a git repo."
    return 1
  fi

  # Matches: feat-REL-4014-abu-dhabi-bays -> type=feat, ticket=REL-4014
  if [[ $branch =~ ^(feat|fix)-([A-Za-z]{3})-([0-9]+)-.*$ ]]; then
    local type="${match[1]}"
    local ticket="${match[2]}-${match[3]}"
    local full_msg="${type}: ${ticket} ${msg}"

    echo "Committing: \"$full_msg\""
    git commit -m "$full_msg"
  else
    echo "Branch '$branch' doesn't match the expected pattern: {feat|fix}-XXX-NNNN-description"
    return 1
  fi
}
