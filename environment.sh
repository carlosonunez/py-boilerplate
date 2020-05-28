#!/usr/bin/env bash
USAGE_TEXT=$(cat <<-USAGE
./environment.sh
Sets up ones environment.

This script takes no options. Run 'source ./environment.sh' to use it.
USAGE
)

detect_if_sourced() {
  # Thanks to StackOverflow for this one.
  # https://stackoverflow.com/a/2684300/314212
  test "${BASH_SOURCE[0]}" != "${0}"
}

if [ "$1" == "--help" ] || [ "$1" == "-h" ]
then
  echo "$USAGE_TEXT"
  exit 0
fi

if ! detect_if_sourced
then
  echo "$USAGE_TEXT"
  echo "---"
  >&2 echo "ERROR: You must source this file instead of running it."
  exit 1
fi

export PYTHONPATH="$PWD;$PYTHONPATH"
source env/bin/activate
alias unit=scripts/unit
