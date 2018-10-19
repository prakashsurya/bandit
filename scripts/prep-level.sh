#!/bin/bash -eu

set -o pipefail

TOP=$(git rev-parse --show-toplevel 2>/dev/null)

if [[ -z "$TOP" ]]; then
	echo "Must be run inside the git repsitory."
	exit 1
fi

if [[ "$EUID" -eq 0 ]]; then
	echo "This script must not be run as root." 1>&2
	exit 1
fi

if [[ "$#" -ne 1 ]]; then
	echo "Invalid arguments. Please specify level number only." >&2
	exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]]; then
	echo "Argument specified must be a number." >&2
	exit 1
fi

mkdir "$TOP/bandit$1"
cd "$TOP/bandit$1"

HEADER_STRING="Bandit Level $(($1 - 1)) &rarr; Level $1"
HEADER_NCHARS=$(echo -n "$HEADER_STRING" | wc -c)
HEADER_MARKER=$(printf "%.s=" $(seq $HEADER_NCHARS))

echo "$HEADER_STRING" >> README.md
echo "$HEADER_MARKER" >> README.md
echo "" >> README.md

pandoc "http://overthewire.org/wargames/bandit/bandit$1.html" \
	-t markdown | tail -n +33 | head -n -5 >> README.md
