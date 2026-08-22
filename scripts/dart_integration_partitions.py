#!/usr/bin/env python3

from __future__ import annotations

import argparse
import json
import os
import pathlib
import re
import shutil
import subprocess as sp
import sys


def list_tests(package_dir: pathlib.Path) -> list[str]:
    result = sp.run(
        ["go", "test", "--list", "."],
        cwd=package_dir,
        capture_output=True,
        text=True,
        check=True,
    )
    tests = []
    for line in result.stdout.splitlines():
        line = line.strip()
        if re.fullmatch(r"Test\w+", line):
            tests.append(line)
    return tests


def chunk_round_robin(tests: list[str], partitions: int) -> list[list[str]]:
    if not tests:
        return []
    bucket_count = min(partitions, len(tests))
    buckets: list[list[str]] = [[] for _ in range(bucket_count)]
    for index, test_name in enumerate(tests):
        buckets[index % bucket_count].append(test_name)
    return [bucket for bucket in buckets if bucket]


def build_partitions(
    root_dir: pathlib.Path,
    tests: list[str],
    partitions: int,
    package_name: str,
) -> list[list[str]]:
    gotestsum = shutil.which("gotestsum")
    if gotestsum is None:
        return chunk_round_robin(tests, partitions)

    results_dir = root_dir / "test-results"
    results_dir.mkdir(exist_ok=True)

    try:
        result = sp.run(
            [
                gotestsum,
                "tool",
                "ci-matrix",
                "--partitions",
                str(partitions),
                "--timing-files",
                str(results_dir / "*.json"),
                "--partition-tests-in-package",
                package_name,
            ],
            input="\n".join(tests),
            capture_output=True,
            text=True,
            check=True,
        )
    except sp.CalledProcessError:
        return chunk_round_robin(tests, partitions)

    matrix = json.loads(result.stdout)
    buckets: list[list[str]] = []
    for include in matrix.get("include", []):
        bucket_tests = re.findall(r"Test\w+", include.get("tests", ""))
        if bucket_tests:
            buckets.append(bucket_tests)

    if not buckets:
        return chunk_round_robin(tests, partitions)

    return buckets


def run_regex(test_names: list[str]) -> str:
    escaped = [re.escape(test_name) for test_name in test_names]
    return "^(" + "|".join(escaped) + ")$"


def emit_matrix(partitions: list[list[str]]) -> int:
    include = [
        {
            "name": f"{index + 1}/{len(partitions)}",
            "run": run_regex(bucket),
            "count": len(bucket),
            "tests": bucket,
        }
        for index, bucket in enumerate(partitions)
    ]
    print(json.dumps({"include": include}, separators=(",", ":")))
    return 0


def run_single_test(
    package_dir: pathlib.Path,
    test_name: str,
    timeout: str,
    parallel: int,
) -> int:
    gotestsum = shutil.which("gotestsum")
    regex = "^" + re.escape(test_name) + "$"
    print(f"Running integration test {test_name}", flush=True)
    cmd = [
        "go",
        "test",
        "-count=1",
        "-timeout",
        timeout,
        "-parallel",
        str(parallel),
        "-run",
        regex,
        "-json",
        ".",
    ]

    if gotestsum is None:
        return sp.run(cmd, cwd=package_dir).returncode

    go_proc = sp.Popen(
        cmd,
        cwd=package_dir,
        stdout=sp.PIPE,
        text=True,
    )
    assert go_proc.stdout is not None
    gotestsum_proc = sp.Popen(
        [gotestsum, "--raw-command", "--format", "testname", "--", "cat"],
        stdin=go_proc.stdout,
        cwd=package_dir,
        text=True,
    )
    go_proc.stdout.close()
    go_status = go_proc.wait()
    gotestsum_status = gotestsum_proc.wait()
    if go_status != 0:
        return go_status
    return gotestsum_status


def run_partitions(
    package_dir: pathlib.Path,
    partitions: list[list[str]],
    timeout: str,
    parallel: int,
) -> int:
    for index, bucket in enumerate(partitions, start=1):
        print(
            f"Running integration partition {index}/{len(partitions)} "
            f"with {len(bucket)} tests",
            flush=True,
        )
        for test_name in bucket:
            status = run_single_test(package_dir, test_name, timeout, parallel)
            if status != 0:
                return status

    return 0


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("command", choices=["matrix", "run", "run-tests"])
    parser.add_argument("--package-dir", default="integration_tests")
    parser.add_argument(
        "--package",
        default="github.com/pulumi-dart/integration_tests",
    )
    parser.add_argument("--partitions", type=int, default=8)
    parser.add_argument("--timeout", default="60m")
    parser.add_argument("--parallel", type=int, default=4)
    parser.add_argument("--tests-json")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    root_dir = pathlib.Path(__file__).resolve().parent.parent
    package_dir = (root_dir / args.package_dir).resolve()
    tests = list_tests(package_dir)
    partitions = build_partitions(root_dir, tests, args.partitions, args.package)

    if args.command == "matrix":
        return emit_matrix(partitions)

    if args.command == "run-tests":
        if args.tests_json is None:
            raise ValueError("--tests-json is required for run-tests")
        tests = json.loads(args.tests_json)
        for test_name in tests:
            status = run_single_test(package_dir, test_name, args.timeout, args.parallel)
            if status != 0:
                return status
        return 0

    return run_partitions(package_dir, partitions, args.timeout, args.parallel)


if __name__ == "__main__":
    sys.exit(main())
