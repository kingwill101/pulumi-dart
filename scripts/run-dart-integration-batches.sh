#!/usr/bin/env bash
set -euo pipefail

mode="all"
shards=1
shard_index=0
batch_size=4
parallelism=4

while [[ $# -gt 0 ]]; do
  case "$1" in
    --mode)
      mode="$2"
      shift 2
      ;;
    --shards)
      shards="$2"
      shift 2
      ;;
    --shard-index)
      shard_index="$2"
      shift 2
      ;;
    --batch-size)
      batch_size="$2"
      shift 2
      ;;
    --parallel)
      parallelism="$2"
      shift 2
      ;;
    *)
      echo "Unknown argument: $1" >&2
      exit 1
      ;;
  esac
done

if [[ "$mode" != "all" && "$mode" != "core" && "$mode" != "cloud" ]]; then
  echo "Unsupported mode: $mode" >&2
  exit 1
fi

if (( shards < 1 )); then
  echo "--shards must be >= 1" >&2
  exit 1
fi

if (( shard_index < 0 || shard_index >= shards )); then
  echo "--shard-index must be within [0, $((shards - 1))]" >&2
  exit 1
fi

if (( batch_size < 1 )); then
  echo "--batch-size must be >= 1" >&2
  exit 1
fi

declare -A cloud_only_tests=(
  [TestEnvironmentsBasicDart]=1
  [TestEnvironmentsMergeDart]=1
  [TestTracePropagationDart]=1
  [TestAutomationEnvironmentManagementDart]=1
  [TestAutomationRemoteWorkspaceLifecycleDart]=1
  [TestPolicyPublishEnableDisableDart]=1
)

cd integration_tests

mapfile -t all_tests < <(go test -list . . | grep '^Test' | sort)
selected=()
for test_name in "${all_tests[@]}"; do
  is_cloud_only=0
  if [[ -n "${cloud_only_tests[$test_name]+x}" ]]; then
    is_cloud_only=1
  fi

  case "$mode" in
    core)
      (( is_cloud_only == 0 )) && selected+=("$test_name")
      ;;
    cloud)
      (( is_cloud_only == 1 )) && selected+=("$test_name")
      ;;
    all)
      selected+=("$test_name")
      ;;
  esac
done

if (( shards > 1 )); then
  sharded=()
  for i in "${!selected[@]}"; do
    if (( i % shards == shard_index )); then
      sharded+=("${selected[$i]}")
    fi
  done
  selected=("${sharded[@]}")
fi

printf 'Selected %s %s integration tests\n' "${#selected[@]}" "$mode"
if (( shards > 1 )); then
  printf 'Shard %s of %s\n' "$shard_index" "$shards"
fi

if (( ${#selected[@]} == 0 )); then
  exit 0
fi

printf '%s\n' "${selected[@]}"

for ((start = 0; start < ${#selected[@]}; start += batch_size)); do
  batch=("${selected[@]:start:batch_size}")
  regex="^($(IFS='|'; echo "${batch[*]}"))$"
  printf '\nRunning batch %s-%s\n' "$((start + 1))" "$((start + ${#batch[@]}))"
  printf '%s\n' "${batch[@]}"
  go test -count=1 -timeout 60m -parallel "${parallelism}" -run "${regex}" -json . | gotestsum --format testname
done
