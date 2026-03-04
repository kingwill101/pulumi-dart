---
sidebar_position: 4
---

# Debugging Pulumi Dart Runtime

## Scope

- Debugging Pulumi Dart program execution.
- Debugger attachment for `pulumi preview` and `pulumi up`.
- Interpreting runtime messages shown by Pulumi CLI.
- VS Code attach flow.

## Prerequisites

- `pulumi-language-dart` on `PATH`.
- Dart VS Code extension installed.
- Stack selected and decryptable config/secrets.

## Commands

- Program attach during preview:
```bash
pulumi preview --attach-debugger=program
```
- Program attach during update:
```bash
pulumi up --attach-debugger=program
```
- Program attach in single-step update:
```bash
pulumi up --skip-preview --attach-debugger=program
```
- Program + plugin attach:
```bash
pulumi preview --attach-debugger=all
```

## What to expect in CLI output

- Short runtime lines intended to fit the `Info` column:
  - `vm service: 127.0.0.1:<port>`
  - `devtools profiler: 127.0.0.1:<port>`
  - `pulumi-language-dart: debugger endpoint=127.0.0.1:<port>`

- Pulumi waiting message:
  - `Waiting for debugger to attach (on vm service 127.0.0.1:<port>)...`

## Real output examples

Example attach session:

```text
pulumi preview --attach-debugger=program
warning: using pulumi-language-dart from $PATH at /home/kingwill101/go/bin/pulumi-language-dart
Previewing update (dev)
...
pulumi:pulumi:Stack aws-dart-hello-fargate-dev  vm service: 127.0.0.1:44651
pulumi:pulumi:Stack aws-dart-hello-fargate-dev  Waiting for debugger to attach (on vm service 127.0.0.1:44651)...
pulumi:pulumi:Stack aws-dart-hello-fargate-dev  pulumi-language-dart: debugger endpoint=127.0.0.1:44651
pulumi:pulumi:Stack aws-dart-hello-fargate-dev  devtools profiler: 127.0.0.1:44651
```

Example of narrow-terminal truncation in `Info` column:

```text
Type                 Name                        Plan     Info
pulumi:pulumi:Stack  aws-dart-hello-fargate-dev           devtools profiler: 127.0.0.1:33911
```

If truncated, rely on:

- `vm service: 127.0.0.1:<port>`
- `pulumi-language-dart: debugger endpoint=127.0.0.1:<port>`

Both are short and stable.

## VS Code setup

Example workspace files for `examples/aws/hello-fargate`:

- [launch.json](/run/media/kingwill101/disk2/code/code/dart_packages/pulumi-dart/examples/aws/hello-fargate/.vscode/launch.json)
- [tasks.json](/run/media/kingwill101/disk2/code/code/dart_packages/pulumi-dart/examples/aws/hello-fargate/.vscode/tasks.json)

Launch config:

- `Attach Pulumi Dart VM Service` (request type `attach`).
- Prompt value expects `vmServiceUri`.

When CLI prints `vm service: 127.0.0.1:44651`, use:

- `http://127.0.0.1:44651/`

## Recommended attach workflow (VS Code)

- Start task: `Pulumi Preview (Attach Debugger Program)`.
- Wait for `vm service: 127.0.0.1:<port>`.
- Start debug config: `Attach Pulumi Dart VM Service`.
- Paste `http://127.0.0.1:<port>/` when prompted.
- Continue in debugger.

## Runtime cache and debugging

- Normal preview/update path uses compile cache.
- Attach-debugger program flow runs from source with VM service flags.
- Compile-cache logs may still appear from package warm-up phase.

## Troubleshooting

- Symptom: no attach wait line.
  - Check command includes `--attach-debugger=program`.
  - Check language host path warning references expected binary.

- Symptom: attach starts but breakpoints do not bind.
  - Verify correct stack program source files are open.
  - Ensure attach target is program (not only plugins).
  - Retry with fresh preview attach run.

- Symptom: `Info` column truncates lines.
  - Use short endpoint lines:
    - `vm service: 127.0.0.1:<port>`
    - `pulumi-language-dart: debugger endpoint=127.0.0.1:<port>`
  - Use `--suppress-progress` for clearer streaming output.

- Symptom: repeated passphrase prompts.
  - Set `PULUMI_CONFIG_PASSPHRASE` or `PULUMI_CONFIG_PASSPHRASE_FILE`.

## Related pages

- [Runtime execution and entrypoint resolution](./runtime-execution.md)
- [Troubleshooting](../get-started/troubleshooting.md)

