#!/usr/bin/env bash
# Regenerate the NotoSerif subsets shipped in assets/fonts from the pristine
# sources in assets/fonts-src. Run only when a source font changes.
set -euo pipefail
cd "$(dirname "$0")/.."

PYFTS=""
if [ -x "$HOME/.venvs/fontsubset/bin/pyftsubset" ]; then
  PYFTS="$HOME/.venvs/fontsubset/bin/pyftsubset"
elif command -v pyftsubset >/dev/null 2>&1; then
  PYFTS="pyftsubset"
else
  echo "pyftsubset not found (pip install fonttools)" >&2
  exit 1
fi

# Latin + Latin-Extended (Spanish accents) + common punctuation/symbols. Keeps
# the full variable weight axis and italics; drops the non-Latin scripts that
# make up most of the file size.
UNICODES="U+0000-00FF,U+0131,U+0152-0153,U+02BB-02BC,U+02C6,U+02DA,U+02DC,U+0304,U+0308,U+0329,U+2000-206F,U+20AC,U+2122,U+2191,U+2193,U+2212,U+2215,U+FEFF,U+FFFD"

"$PYFTS" assets/fonts-src/NotoSerif-VariableFont_wdth,wght.ttf \
  --unicodes="$UNICODES" --name-IDs='*' \
  --output-file=assets/fonts/NotoSerif-VariableFont_wght.ttf

"$PYFTS" assets/fonts-src/NotoSerif-Italic-VariableFont_wdth,wght.ttf \
  --unicodes="$UNICODES" --name-IDs='*' \
  --output-file=assets/fonts/NotoSerif-Italic-VariableFont_wght.ttf