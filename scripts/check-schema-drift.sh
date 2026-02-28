#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/.." && pwd)"

MANIFEST_PATH="${REPO_ROOT}/packages/schema_sources.json"
PROVIDER=""
PRETTY="false"
FAIL_ON_DRIFT="false"

usage() {
  cat <<USAGE
Check upstream Pulumi schema drift for generated Dart provider packages.

Usage:
  check-schema-drift.sh [--provider <name>] [--manifest <path>] [--pretty] [--fail-on-drift]

Options:
  --provider <name>    Check a single provider from the manifest.
  --manifest <path>    Manifest path (default: packages/schema_sources.json).
  --pretty             Pretty-print JSON output.
  --fail-on-drift      Exit non-zero when upstream drift is detected.
  -h, --help           Show this help.

Output:
  JSON object (single provider) or JSON array (all providers).
USAGE
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --provider)
      PROVIDER="${2:-}"
      shift 2
      ;;
    --manifest)
      MANIFEST_PATH="${2:-}"
      shift 2
      ;;
    --pretty)
      PRETTY="true"
      shift
      ;;
    --fail-on-drift)
      FAIL_ON_DRIFT="true"
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 1
      ;;
  esac
done

require_command() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "Missing required command: $1" >&2
    exit 1
  fi
}

require_command curl
require_command jq

sha256_file() {
  local path="$1"
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum "${path}" | awk '{print $1}'
    return
  fi
  if command -v shasum >/dev/null 2>&1; then
    shasum -a 256 "${path}" | awk '{print $1}'
    return
  fi
  echo "Neither sha256sum nor shasum is available" >&2
  exit 1
}

sha256_canonical_json() {
  local path="$1"
  local canonical
  canonical="$(jq -cS . "${path}")"
  if command -v sha256sum >/dev/null 2>&1; then
    printf '%s' "${canonical}" | sha256sum | awk '{print $1}'
    return
  fi
  if command -v shasum >/dev/null 2>&1; then
    printf '%s' "${canonical}" | shasum -a 256 | awk '{print $1}'
    return
  fi
  echo "Neither sha256sum nor shasum is available" >&2
  exit 1
}

schema_version() {
  local path="$1"
  jq -r '.version // ""' "${path}"
}

pubspec_version() {
  local path="$1"
  if [[ ! -f "${path}" ]]; then
    printf ''
    return
  fi
  sed -n 's/^version:[[:space:]]*//p' "${path}" | head -n1
}

abs_path() {
  local path="$1"
  if [[ "${path}" = /* ]]; then
    printf '%s\n' "${path}"
  else
    printf '%s/%s\n' "${REPO_ROOT}" "${path}"
  fi
}

if [[ ! -f "${MANIFEST_PATH}" ]]; then
  echo "Manifest not found: ${MANIFEST_PATH}" >&2
  exit 1
fi

TMP_DIR="$(mktemp -d)"
cleanup() {
  rm -rf "${TMP_DIR}"
}
trap cleanup EXIT

report_for_provider() {
  local provider_name="$1"
  local entry
  entry="$(jq -c --arg name "${provider_name}" '.providers[] | select(.name == $name)' "${MANIFEST_PATH}")"
  if [[ -z "${entry}" ]]; then
    echo "Provider not found in manifest: ${provider_name}" >&2
    exit 1
  fi

  local schema_url local_schema_rel local_pubspec_rel
  schema_url="$(jq -r '.schema_url' <<<"${entry}")"
  local_schema_rel="$(jq -r '.local_schema_path' <<<"${entry}")"
  local_pubspec_rel="$(jq -r '.package_pubspec_path // ""' <<<"${entry}")"

  local local_schema_abs local_pubspec_abs
  local_schema_abs="$(abs_path "${local_schema_rel}")"
  local_pubspec_abs=""
  if [[ -n "${local_pubspec_rel}" ]]; then
    local_pubspec_abs="$(abs_path "${local_pubspec_rel}")"
  fi

  if [[ ! -f "${local_schema_abs}" ]]; then
    echo "Local schema not found for ${provider_name}: ${local_schema_abs}" >&2
    exit 1
  fi

  local remote_schema_abs
  remote_schema_abs="${TMP_DIR}/${provider_name}.schema.json"
  curl -fsSL "${schema_url}" -o "${remote_schema_abs}"

  local local_version remote_version generated_package_version
  local_version="$(schema_version "${local_schema_abs}")"
  remote_version="$(schema_version "${remote_schema_abs}")"
  generated_package_version="$(pubspec_version "${local_pubspec_abs}")"

  local local_raw_sha remote_raw_sha local_canonical_sha remote_canonical_sha
  local_raw_sha="$(sha256_file "${local_schema_abs}")"
  remote_raw_sha="$(sha256_file "${remote_schema_abs}")"
  local_canonical_sha="$(sha256_canonical_json "${local_schema_abs}")"
  remote_canonical_sha="$(sha256_canonical_json "${remote_schema_abs}")"

  local upstream_version_changed upstream_checksum_changed
  local package_version_matches_local_schema drift

  if [[ "${local_version}" != "${remote_version}" ]]; then
    upstream_version_changed="true"
  else
    upstream_version_changed="false"
  fi

  if [[ "${local_canonical_sha}" != "${remote_canonical_sha}" ]]; then
    upstream_checksum_changed="true"
  else
    upstream_checksum_changed="false"
  fi

  if [[ -z "${generated_package_version}" || -z "${local_version}" ]]; then
    package_version_matches_local_schema="unknown"
  elif [[ "${generated_package_version}" == "${local_version}" ]]; then
    package_version_matches_local_schema="true"
  else
    package_version_matches_local_schema="false"
  fi

  if [[ "${upstream_version_changed}" == "true" || "${upstream_checksum_changed}" == "true" ]]; then
    drift="true"
  else
    drift="false"
  fi

  jq -cn \
    --arg provider "${provider_name}" \
    --arg schema_url "${schema_url}" \
    --arg local_schema_path "${local_schema_rel}" \
    --arg package_pubspec_path "${local_pubspec_rel}" \
    --arg local_schema_version "${local_version}" \
    --arg upstream_schema_version "${remote_version}" \
    --arg package_version "${generated_package_version}" \
    --arg local_schema_raw_sha256 "${local_raw_sha}" \
    --arg upstream_schema_raw_sha256 "${remote_raw_sha}" \
    --arg local_schema_canonical_sha256 "${local_canonical_sha}" \
    --arg upstream_schema_canonical_sha256 "${remote_canonical_sha}" \
    --argjson upstream_version_changed "${upstream_version_changed}" \
    --argjson upstream_checksum_changed "${upstream_checksum_changed}" \
    --arg package_version_matches_local_schema "${package_version_matches_local_schema}" \
    --argjson drift "${drift}" \
    '{
      provider: $provider,
      schema_url: $schema_url,
      local_schema_path: $local_schema_path,
      package_pubspec_path: $package_pubspec_path,
      local_schema_version: $local_schema_version,
      upstream_schema_version: $upstream_schema_version,
      package_version: $package_version,
      local_schema_raw_sha256: $local_schema_raw_sha256,
      upstream_schema_raw_sha256: $upstream_schema_raw_sha256,
      local_schema_canonical_sha256: $local_schema_canonical_sha256,
      upstream_schema_canonical_sha256: $upstream_schema_canonical_sha256,
      upstream_version_changed: $upstream_version_changed,
      upstream_checksum_changed: $upstream_checksum_changed,
      package_version_matches_local_schema: $package_version_matches_local_schema,
      drift: $drift
    }'
}

DRIFT_FOUND="false"

if [[ -n "${PROVIDER}" ]]; then
  output="$(report_for_provider "${PROVIDER}")"
  if [[ "$(jq -r '.drift' <<<"${output}")" == "true" ]]; then
    DRIFT_FOUND="true"
  fi
else
  report_lines="${TMP_DIR}/report.ndjson"
  : > "${report_lines}"
  while IFS= read -r provider_name; do
    result="$(report_for_provider "${provider_name}")"
    echo "${result}" >> "${report_lines}"
    if [[ "$(jq -r '.drift' <<<"${result}")" == "true" ]]; then
      DRIFT_FOUND="true"
    fi
  done < <(jq -r '.providers[].name' "${MANIFEST_PATH}")
  output="$(jq -s '.' "${report_lines}")"
fi

if [[ "${PRETTY}" == "true" ]]; then
  printf '%s\n' "${output}" | jq .
else
  printf '%s\n' "${output}"
fi

if [[ "${FAIL_ON_DRIFT}" == "true" && "${DRIFT_FOUND}" == "true" ]]; then
  exit 2
fi
