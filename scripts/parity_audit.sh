#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
UPSTREAM_DIR="${UPSTREAM_DIR:-${ROOT_DIR}/pulumi/tests/integration}"
DART_DIR="${DART_DIR:-${ROOT_DIR}/integration_tests}"
IGNORE_FILE="${IGNORE_FILE:-${ROOT_DIR}/docs/parity-audit-ignore.txt}"
FAIL_ON_MISSING="${FAIL_ON_MISSING:-false}"

if ! command -v rg >/dev/null 2>&1; then
  echo "error: ripgrep (rg) is required" >&2
  exit 1
fi

if [ ! -d "${UPSTREAM_DIR}" ]; then
  echo "error: upstream integration dir not found: ${UPSTREAM_DIR}" >&2
  exit 1
fi

if [ ! -d "${DART_DIR}" ]; then
  echo "error: Dart integration dir not found: ${DART_DIR}" >&2
  exit 1
fi

upstream_tests_file="$(mktemp)"
dart_tests_file="$(mktemp)"
missing_raw_file="$(mktemp)"
missing_filtered_file="$(mktemp)"
ignore_names_file="$(mktemp)"
trap 'rm -f "${upstream_tests_file}" "${dart_tests_file}" "${missing_raw_file}" "${missing_filtered_file}" "${ignore_names_file}"' EXIT

baseline_files=(
  "${UPSTREAM_DIR}/integration_go_test.go"
  "${UPSTREAM_DIR}/integration_nodejs_test.go"
  "${UPSTREAM_DIR}/integration_python_test.go"
)

for f in "${baseline_files[@]}"; do
  if [ ! -f "${f}" ]; then
    echo "error: upstream baseline file not found: ${f}" >&2
    exit 1
  fi
done

rg -No --no-filename '^func Test[A-Za-z0-9_]+(Python|NodeJS|Node|Go)\(' "${baseline_files[@]}" \
  | sed -E 's/^func Test([A-Za-z0-9_]+)(Python|NodeJS|Node|Go)\($/\1/' \
  | sort -u >"${upstream_tests_file}"

rg -No --no-filename --glob '*_test.go' '^func Test[A-Za-z0-9_]+\(' "${DART_DIR}" \
  | sed -E 's/^func Test([A-Za-z0-9_]+)\($/\1/' \
  | awk '{name=$0; sub(/Dart$/, "", name); print name}' \
  | sort -u >"${dart_tests_file}"

comm -23 "${upstream_tests_file}" "${dart_tests_file}" >"${missing_raw_file}"

if [ -f "${IGNORE_FILE}" ]; then
  grep -v '^#' "${IGNORE_FILE}" | sed '/^[[:space:]]*$/d' | sort -u >"${ignore_names_file}" || true
else
  : >"${ignore_names_file}"
fi

if [ -s "${ignore_names_file}" ]; then
  grep -Fxv -f "${ignore_names_file}" "${missing_raw_file}" >"${missing_filtered_file}" || true
else
  cp "${missing_raw_file}" "${missing_filtered_file}"
fi

upstream_count="$(wc -l <"${upstream_tests_file}" | tr -d ' ')"
dart_count="$(wc -l <"${dart_tests_file}" | tr -d ' ')"
missing_raw_count="$(wc -l <"${missing_raw_file}" | tr -d ' ')"
missing_filtered_count="$(wc -l <"${missing_filtered_file}" | tr -d ' ')"

printf 'Pulumi Dart parity audit\n'
printf 'Upstream baseline tests: %s\n' "${upstream_count}"
printf 'Dart integration tests:  %s\n' "${dart_count}"
printf 'Missing before ignore:   %s\n' "${missing_raw_count}"
printf 'Missing after ignore:    %s\n' "${missing_filtered_count}"

if [ -s "${missing_filtered_file}" ]; then
  printf '\nMissing tests (after ignore):\n'
  sed 's/^/  - /' "${missing_filtered_file}"

  printf '\nMissing test categories:\n'
  awk '
    /Config|Secret/ { c["config"]++; next }
    /About|Printf|Log|Error|Fail|Failure|Debugger/ { c["cli-error"]++; next }
    /Dynamic|Partial|Enum|ResourceWithSecretSerialization|ConvertTerraformProvider/ { c["dynamic-schema"]++; next }
    { c["other"]++ }
    END {
      if (length(c) == 0) {
        print "  - none"
      } else {
        for (k in c) {
          printf "  - %s: %d\n", k, c[k]
        }
      }
    }
  ' "${missing_filtered_file}"
fi

if [ "${FAIL_ON_MISSING}" = "true" ] && [ "${missing_filtered_count}" -gt 0 ]; then
  exit 1
fi
