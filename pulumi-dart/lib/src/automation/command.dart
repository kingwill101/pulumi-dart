import 'dart:convert';

/// Callback used by automation APIs to execute Pulumi commands.
typedef PulumiCommandRunner =
    Future<PulumiCommandResult> Function(PulumiCommandRequest request);

/// A Pulumi CLI command invocation.
class PulumiCommandRequest {
  const PulumiCommandRequest({
    required this.executable,
    required this.arguments,
    required this.workingDirectory,
    required this.environment,
    this.runInShell = true,
    this.stdoutEncoding = utf8,
    this.stderrEncoding = utf8,
  });

  /// Executable name or path, typically `pulumi`.
  final String executable;

  /// CLI arguments.
  final List<String> arguments;

  /// Working directory for the command.
  final String workingDirectory;

  /// Environment variables supplied to the process.
  final Map<String, String> environment;

  /// Whether to run the command in a shell.
  final bool runInShell;

  /// Encoding for stdout.
  final Encoding stdoutEncoding;

  /// Encoding for stderr.
  final Encoding stderrEncoding;
}

/// A Pulumi CLI command result.
class PulumiCommandResult {
  const PulumiCommandResult({
    required this.exitCode,
    required this.stdout,
    required this.stderr,
  });

  /// Process exit code.
  final int exitCode;

  /// Captured standard output.
  final String stdout;

  /// Captured standard error.
  final String stderr;

  /// Returns `true` when [exitCode] is `0`.
  bool get succeeded => exitCode == 0;
}

/// Thrown when a Pulumi CLI command fails and `check` mode is enabled.
class PulumiCommandException implements Exception {
  const PulumiCommandException({required this.request, required this.result});

  /// Failed command request.
  final PulumiCommandRequest request;

  /// Failed command result.
  final PulumiCommandResult result;

  @override
  String toString() {
    final args = request.arguments.join(' ');
    return 'Pulumi command failed (${result.exitCode}): '
        '${request.executable} $args\n'
        'stdout:\n${result.stdout}\n'
        'stderr:\n${result.stderr}';
  }
}

/// An error resulting from a failed Pulumi command.
class CommandError extends PulumiCommandException {
  const CommandError({required super.request, required super.result});
}

/// Thrown when selecting a stack that does not exist.
class StackNotFoundError extends CommandError {
  const StackNotFoundError({required super.request, required super.result});
}

/// Thrown when creating a stack that already exists.
class StackAlreadyExistsError extends CommandError {
  const StackAlreadyExistsError({
    required super.request,
    required super.result,
  });
}

/// Thrown when another update is already in progress.
class ConcurrentUpdateError extends CommandError {
  const ConcurrentUpdateError({required super.request, required super.result});
}

/// Thrown when inline source execution fails at runtime.
class InlineSourceRuntimeError extends CommandError {
  const InlineSourceRuntimeError({
    required super.request,
    required super.result,
  });
}

/// Thrown when a Pulumi program fails at runtime.
class RuntimeError extends CommandError {
  const RuntimeError({required super.request, required super.result});
}

/// Thrown when a Pulumi program fails to compile/build.
class CompilationError extends CommandError {
  const CompilationError({required super.request, required super.result});
}

final RegExp _notFoundRegex = RegExp(r'no stack named.*found');
final RegExp _alreadyExistsRegex = RegExp(r'stack.*already exists');
final RegExp _runtimeErrorRegex = RegExp(
  r'failed with an unhandled exception|panic: runtime error|an unhandled error occurred:',
);
final RegExp _compilationErrorRegex = RegExp(
  r'Build FAILED.|Unable to compile TypeScript|: syntax error:|: undefined:',
);
const String _conflictText =
    '[409] Conflict: Another update is currently in progress.';
const String _diyBackendConflictText = 'the stack is currently locked by';
const String _inlineSourceErrorText = 'python inline source runtime error';

/// Maps a failed command to a more specific automation error subtype.
PulumiCommandException createCommandException(
  PulumiCommandRequest request,
  PulumiCommandResult result,
) {
  final stderr = result.stderr;
  final stdout = result.stdout;

  if (_notFoundRegex.hasMatch(stderr)) {
    return StackNotFoundError(request: request, result: result);
  }
  if (_alreadyExistsRegex.hasMatch(stderr)) {
    return StackAlreadyExistsError(request: request, result: result);
  }
  if (stderr.contains(_conflictText) ||
      stderr.contains(_diyBackendConflictText)) {
    return ConcurrentUpdateError(request: request, result: result);
  }
  if (_compilationErrorRegex.hasMatch(stdout)) {
    return CompilationError(request: request, result: result);
  }
  if (stdout.contains(_inlineSourceErrorText)) {
    return InlineSourceRuntimeError(request: request, result: result);
  }
  if (_runtimeErrorRegex.hasMatch(stdout)) {
    return RuntimeError(request: request, result: result);
  }

  return CommandError(request: request, result: result);
}
