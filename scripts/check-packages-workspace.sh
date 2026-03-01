#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/.." && pwd)"

ROOT_PUBSPEC="${REPO_ROOT}/packages/pubspec.yaml"

if [[ ! -f "${ROOT_PUBSPEC}" ]]; then
  echo "Missing workspace pubspec: ${ROOT_PUBSPEC}" >&2
  exit 1
fi

if grep -Eq '^[[:space:]]*resolution:[[:space:]]*' "${ROOT_PUBSPEC}"; then
  echo "Invalid root workspace pubspec: packages/pubspec.yaml must not set resolution." >&2
  exit 1
fi

mapfile -t workspace_members < <(
  awk '
    /^workspace:[[:space:]]*$/ { in_workspace = 1; next }
    in_workspace && /^[^[:space:]]/ { in_workspace = 0 }
    in_workspace && /^[[:space:]]*-[[:space:]]*/ {
      entry = $0
      sub(/^[[:space:]]*-[[:space:]]*/, "", entry)
      sub(/[[:space:]]*#.*/, "", entry)
      gsub(/^[[:space:]]+|[[:space:]]+$/, "", entry)
      if (entry != "") print entry
    }
  ' "${ROOT_PUBSPEC}"
)

if [[ ${#workspace_members[@]} -eq 0 ]]; then
  echo "No workspace members found in packages/pubspec.yaml" >&2
  exit 1
fi

declare -A seen=()
errors=0

for member in "${workspace_members[@]}"; do
  if [[ -n "${seen[${member}]:-}" ]]; then
    echo "Duplicate workspace member in packages/pubspec.yaml: ${member}" >&2
    errors=1
  fi
  seen["${member}"]=1

  member_pubspec="${REPO_ROOT}/packages/${member}/pubspec.yaml"
  if [[ ! -f "${member_pubspec}" ]]; then
    echo "Workspace member is missing pubspec: packages/${member}/pubspec.yaml" >&2
    errors=1
    continue
  fi

  if ! grep -Eq "^[[:space:]]*resolution:[[:space:]]*['\"]?workspace['\"]?[[:space:]]*$" "${member_pubspec}"; then
    echo "Workspace member must set resolution: workspace -> packages/${member}/pubspec.yaml" >&2
    errors=1
  fi
done

if [[ ${errors} -ne 0 ]]; then
  exit 1
fi

echo "Workspace pubspec checks passed for ${#workspace_members[@]} members."
