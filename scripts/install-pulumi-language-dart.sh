#!/usr/bin/env bash
set -euo pipefail

REPO="${PULUMI_DART_RELEASE_REPO:-kingwill101/pulumi-dart}"
VERSION="latest"
INSTALL_DIR="${PULUMI_DART_INSTALL_DIR:-$HOME/.local/bin}"

usage() {
  cat <<USAGE
Install pulumi-language-dart from GitHub Releases.

Usage:
  install-pulumi-language-dart.sh [--version <tag>] [--install-dir <dir>] [--repo <owner/repo>]

Examples:
  install-pulumi-language-dart.sh
  install-pulumi-language-dart.sh --version v0.1.0
  install-pulumi-language-dart.sh --install-dir "\$HOME/bin"
USAGE
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --version)
      VERSION="${2:-}"
      shift 2
      ;;
    --install-dir)
      INSTALL_DIR="${2:-}"
      shift 2
      ;;
    --repo)
      REPO="${2:-}"
      shift 2
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage
      exit 1
      ;;
  esac
done

if ! command -v curl >/dev/null 2>&1; then
  echo "curl is required" >&2
  exit 1
fi

case "$(uname -s)" in
  Linux)
    OS="linux"
    ;;
  Darwin)
    OS="darwin"
    ;;
  MINGW*|MSYS*|CYGWIN*)
    OS="windows"
    ;;
  *)
    echo "Unsupported OS: $(uname -s)" >&2
    exit 1
    ;;
esac

case "$(uname -m)" in
  x86_64|amd64)
    ARCH="amd64"
    ;;
  arm64|aarch64)
    ARCH="arm64"
    ;;
  *)
    echo "Unsupported architecture: $(uname -m)" >&2
    exit 1
    ;;
esac

if [ "$VERSION" = "latest" ]; then
  RELEASE_API_URL="https://api.github.com/repos/${REPO}/releases/latest"
else
  TAG="$VERSION"
  RELEASE_API_URL="https://api.github.com/repos/${REPO}/releases/tags/${TAG}"
fi

echo "Resolving release metadata from ${RELEASE_API_URL} ..."
RELEASE_JSON="$(curl -fsSL "$RELEASE_API_URL")"

if command -v jq >/dev/null 2>&1; then
  TAG="$(printf '%s' "$RELEASE_JSON" | jq -r '.tag_name')"
elif command -v python3 >/dev/null 2>&1; then
  TAG="$(printf '%s' "$RELEASE_JSON" | python3 -c 'import json,sys;print(json.load(sys.stdin)["tag_name"])')"
else
  echo "Either jq or python3 is required to parse GitHub release metadata" >&2
  exit 1
fi

if [ -z "$TAG" ] || [ "$TAG" = "null" ]; then
  echo "Failed to resolve release tag from GitHub API response" >&2
  exit 1
fi

if [ "$OS" = "windows" ]; then
  ARCHIVE_EXT="zip"
else
  ARCHIVE_EXT="tar.gz"
fi

ASSET_NAME="pulumi-language-dart-${TAG}-${OS}-${ARCH}.${ARCHIVE_EXT}"

if command -v jq >/dev/null 2>&1; then
  ASSET_URL="$(printf '%s' "$RELEASE_JSON" | jq -r --arg n "$ASSET_NAME" '.assets[] | select(.name == $n) | .browser_download_url' | head -n 1)"
elif command -v python3 >/dev/null 2>&1; then
  ASSET_URL="$(printf '%s' "$RELEASE_JSON" | python3 -c 'import json,sys
payload=json.load(sys.stdin)
name=sys.argv[1]
for a in payload.get("assets", []):
  if a.get("name") == name:
    print(a.get("browser_download_url", ""))
    break
' "$ASSET_NAME")"
else
  echo "Either jq or python3 is required to parse GitHub release metadata" >&2
  exit 1
fi

if [ -z "$ASSET_URL" ] || [ "$ASSET_URL" = "null" ]; then
  echo "Release asset not found: ${ASSET_NAME}" >&2
  echo "Check https://github.com/${REPO}/releases/tag/${TAG}" >&2
  exit 1
fi

TMP_DIR="$(mktemp -d)"
cleanup() {
  rm -rf "$TMP_DIR"
}
trap cleanup EXIT

ARCHIVE_PATH="${TMP_DIR}/${ASSET_NAME}"

echo "Downloading ${ASSET_NAME} ..."
curl -fL "$ASSET_URL" -o "$ARCHIVE_PATH"

mkdir -p "$INSTALL_DIR"
mkdir -p "$TMP_DIR/extracted"

if [ "$ARCHIVE_EXT" = "zip" ]; then
  if ! command -v unzip >/dev/null 2>&1; then
    echo "unzip is required to install windows archives" >&2
    exit 1
  fi
  unzip -q "$ARCHIVE_PATH" -d "$TMP_DIR/extracted"
else
  tar -xzf "$ARCHIVE_PATH" -C "$TMP_DIR/extracted"
fi

BINARY_PATH="$(find "$TMP_DIR/extracted" -type f -name 'pulumi-language-dart*' | head -n 1)"
if [ -z "$BINARY_PATH" ]; then
  echo "Could not find pulumi-language-dart binary in downloaded archive" >&2
  exit 1
fi

TARGET_PATH="${INSTALL_DIR}/pulumi-language-dart"
install -m 0755 "$BINARY_PATH" "$TARGET_PATH"

echo "Installed: ${TARGET_PATH}"
echo
if command -v pulumi-language-dart >/dev/null 2>&1; then
  echo "pulumi-language-dart is on PATH"
else
  echo "Add to PATH:"
  echo "  export PATH=\"${INSTALL_DIR}:\$PATH\""
fi
