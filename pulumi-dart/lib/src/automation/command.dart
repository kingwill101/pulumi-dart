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
