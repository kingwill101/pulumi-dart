#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NODEJS_TEST_DIR="${NODEJS_TEST_DIR:-${ROOT_DIR}/pulumi/sdk/nodejs/tests}"
PYTHON_TEST_DIR="${PYTHON_TEST_DIR:-${ROOT_DIR}/pulumi/sdk/python/lib/test}"
DART_CORE_DIR="${DART_CORE_DIR:-${ROOT_DIR}/pulumi-dart/test/core}"
IGNORE_FILE="${IGNORE_FILE:-${ROOT_DIR}/docs/sdk-parity-audit-ignore.txt}"
FAIL_ON_MISSING="${FAIL_ON_MISSING:-false}"

if [ ! -d "${NODEJS_TEST_DIR}" ]; then
  echo "error: NodeJS SDK test dir not found: ${NODEJS_TEST_DIR}" >&2
  exit 1
fi
if [ ! -d "${PYTHON_TEST_DIR}" ]; then
  echo "error: Python SDK test dir not found: ${PYTHON_TEST_DIR}" >&2
  exit 1
fi
if [ ! -d "${DART_CORE_DIR}" ]; then
  echo "error: Dart core test dir not found: ${DART_CORE_DIR}" >&2
  exit 1
fi

dart_topics_file="$(mktemp)"
upstream_entries_file="$(mktemp)"
ignore_names_file="$(mktemp)"
audit_output_file="$(mktemp)"
trap 'rm -f "${dart_topics_file}" "${upstream_entries_file}" "${ignore_names_file}" "${audit_output_file}"' EXIT

find "${DART_CORE_DIR}" -type f -name '*_test.dart' \
  | awk -F/ '{f=$NF; sub(/_test\.dart$/, "", f); sub(/_parity$/, "", f); print f}' \
  | sort -u >"${dart_topics_file}"

find "${NODEJS_TEST_DIR}" -type f -name '*.spec.ts' \
  | while read -r f; do
      rel="${f#${NODEJS_TEST_DIR}/}"
      category="${rel%%/*}"
      if [ "${category}" = "${rel}" ]; then
        category="root"
      fi
      topic="$(basename "${f}")"
      topic="${topic%.spec.ts}"
      printf 'nodejs|%s|%s\n' "${category}" "${topic}"
    done >"${upstream_entries_file}"

find "${PYTHON_TEST_DIR}" -type f -name 'test_*.py' \
  | while read -r f; do
      rel="${f#${PYTHON_TEST_DIR}/}"
      category="${rel%%/*}"
      if [ "${category}" = "${rel}" ]; then
        category="root"
      fi
      topic="$(basename "${f}")"
      topic="${topic#test_}"
      topic="${topic%.py}"
      printf 'python|%s|%s\n' "${category}" "${topic}"
    done >>"${upstream_entries_file}"

sort -u -o "${upstream_entries_file}" "${upstream_entries_file}"

if [ -f "${IGNORE_FILE}" ]; then
  grep -v '^#' "${IGNORE_FILE}" | sed '/^[[:space:]]*$/d' | sort -u >"${ignore_names_file}" || true
else
  : >"${ignore_names_file}"
fi

awk -F'|' \
  -v dartTopicsFile="${dart_topics_file}" \
  -v ignoreFile="${ignore_names_file}" \
  -v nodeDir="${NODEJS_TEST_DIR}" \
  -v pythonDir="${PYTHON_TEST_DIR}" \
  -v dartDir="${DART_CORE_DIR}" '
function norm(s, t) {
  t = tolower(s)
  gsub(/[^a-z0-9]/, "", t)
  return t
}
function isIgnored(name) {
  return name in ignored
}
function isMatched(name, n, i) {
  n = norm(name)
  for (i = 1; i <= dartCount; i++) {
    if (n == dartNorm[i] || index(n, dartNorm[i]) > 0 || index(dartNorm[i], n) > 0) {
      return 1
    }
  }
  return 0
}
BEGIN {
  while ((getline < dartTopicsFile) > 0) {
    dart[++dartCount] = $0
    dartNorm[dartCount] = norm($0)
  }
  close(dartTopicsFile)

  while ((getline < ignoreFile) > 0) {
    ignored[$0] = 1
  }
  close(ignoreFile)
}
{
  source = $1
  category = $2
  topic = $3

  key = source "/" category
  total[key]++
  sourceTotal[source]++
  overallTotal++

  if (isIgnored(topic)) {
    ignoredCount[key]++
    ignoredTotal[source]++
    overallIgnored++
    next
  }

  if (isMatched(topic)) {
    matched[key]++
    sourceMatched[source]++
    overallMatched++
  } else {
    missing[key]++
    sourceMissing[source]++
    overallMissing++
    missingTopics[key] = missingTopics[key] "\n" topic
  }
}
END {
  print "Pulumi Dart SDK test-surface parity audit"
  print "NodeJS source dir: " nodeDir
  print "Python source dir: " pythonDir
  print "Dart core dir:     " dartDir
  print ""
  printf "Upstream tests considered: %d\n", overallTotal
  printf "Matched by topic:          %d\n", overallMatched
  printf "Missing by topic:          %d\n", overallMissing
  printf "Ignored topics:            %d\n", overallIgnored
  print ""

  print "Summary by source/category (total matched missing ignored):"
  for (k in total) {
    m = (k in matched) ? matched[k] : 0
    ms = (k in missing) ? missing[k] : 0
    ig = (k in ignoredCount) ? ignoredCount[k] : 0
    printf "  - %s: %d %d %d %d\n", k, total[k], m, ms, ig
  }
  print ""

  if (overallMissing == 0) {
    print "Missing topics: none"
    exit 0
  }

  print "Missing topics by source/category:"
  for (k in missingTopics) {
    print "  " k ":"
    n = split(missingTopics[k], arr, "\n")
    for (i = 1; i <= n; i++) {
      if (arr[i] != "") {
        print "    - " arr[i]
      }
    }
  }
}
' "${upstream_entries_file}" >"${audit_output_file}"

cat "${audit_output_file}"

missing_count="$(awk '/^Missing by topic:[[:space:]]+/ {print $4}' "${audit_output_file}")"
if [ "${FAIL_ON_MISSING}" = "true" ] && [ "${missing_count}" -gt 0 ]; then
  exit 1
fi
