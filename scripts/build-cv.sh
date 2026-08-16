#!/usr/bin/env bash
# Compiles a Typst CV to a PDF beside the source file.
#
# Prefers the system typst binary (e.g. yay -S typst).
#
# Args:
#   $1: Path to a .typ CV source.
#
# Returns:
#   Prints the output PDF path on success.
#
# Raises:
#   Exits non-zero if usage is wrong, typst is missing, or the repo root
#   (directory containing Templates/cv) cannot be found.
set -euo pipefail

[[ $# -eq 1 && -f "$1" && "$1" == *.typ ]] || {
  echo "Usage: $0 path/to/cv.typ" >&2
  exit 1
}

if [[ -x /usr/bin/typst ]]; then
  TYPST=/usr/bin/typst
elif command -v typst >/dev/null 2>&1; then
  TYPST=$(command -v typst)
else
  echo "Error: typst not found (install with: yay -S typst)" >&2
  exit 1
fi

SRC=$(realpath "$1")
OUT="${SRC%.typ}.pdf"

ROOT=$SRC
while [[ "$ROOT" != / ]]; do
  ROOT=$(dirname "$ROOT")
  [[ -d "$ROOT/Templates/cv" ]] && break
done
[[ -d "$ROOT/Templates/cv" ]] || {
  echo "Error: repo root with Templates/cv not found" >&2
  exit 1
}

"$TYPST" compile --root "$ROOT" "$SRC" "$OUT"
echo "$OUT"
