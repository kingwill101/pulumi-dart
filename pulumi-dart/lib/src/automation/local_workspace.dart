import 'dart:convert';
import 'dart:io';

import 'command.dart';
import 'stack.dart';
import 'version.dart';

/// Summary metadata for a stack returned by `pulumi stack ls --json`.
class AutomationStackSummary {
  const AutomationStackSummary({
    required this.name,
    required this.current,
    required this.raw,
  });

  final String name;
  final bool current;
  final Map<String, dynamic> raw;
}

Future<PulumiCommandResult> _defaultCommandRunner(
  PulumiCommandRequest request,
) async {
  final result = await Process.run(
    request.executable,
    request.arguments,
    workingDirectory: request.workingDirectory,
    environment: request.environment,
    runInShell: request.runInShell,
    stdoutEncoding: request.stdoutEncoding,
    stderrEncoding: request.stderrEncoding,
  );

  return PulumiCommandResult(
    exitCode: result.exitCode,
    stdout: '${result.stdout}',
    stderr: '${result.stderr}',
  );
}

/// Arguments used to bind stack operations to a local Pulumi project directory.
class LocalProgramArgs {
  const LocalProgramArgs({required this.stackName, required this.workDir});

  /// Stack name (for example `dev`, `org/project/dev`).
  final String stackName;

  /// Directory containing the Pulumi program and `Pulumi.yaml`.
  final String workDir;
}

/// Options for [LocalWorkspace].
class LocalWorkspaceOptions {
  const LocalWorkspaceOptions({
    this.workDir,
    this.environmentVariables = const <String, String>{},
    this.pulumiBinary = 'pulumi',
    this.runInShell = true,
    this.skipVersionCheck = false,
    this.remote = false,
    this.remoteArgs = const <String>[],
    this.commandRunner,
    this.stdoutEncoding = utf8,
    this.stderrEncoding = utf8,
  });

  /// Working directory for Pulumi commands.
  ///
  /// Defaults to [Directory.current].
  final String? workDir;

  /// Environment variables applied to all Pulumi commands.
  final Map<String, String> environmentVariables;

  /// Pulumi executable path/name.
  final String pulumiBinary;

  /// Whether to run commands in a shell.
  final bool runInShell;

  /// Whether to skip Pulumi CLI version compatibility checks.
  final bool skipVersionCheck;

  /// Whether this workspace should run operations in remote mode.
  final bool remote;

  /// Additional CLI args appended for remote operations.
  final List<String> remoteArgs;

  /// Optional command runner override (primarily for tests/custom execution).
  final PulumiCommandRunner? commandRunner;

  /// Encoding used for stdout.
  final Encoding stdoutEncoding;

  /// Encoding used for stderr.
  final Encoding stderrEncoding;

  LocalWorkspaceOptions copyWith({
    String? workDir,
    Map<String, String>? environmentVariables,
    String? pulumiBinary,
    bool? runInShell,
    bool? skipVersionCheck,
    bool? remote,
    List<String>? remoteArgs,
    PulumiCommandRunner? commandRunner,
    Encoding? stdoutEncoding,
    Encoding? stderrEncoding,
  }) {
    return LocalWorkspaceOptions(
      workDir: workDir ?? this.workDir,
      environmentVariables: environmentVariables ?? this.environmentVariables,
      pulumiBinary: pulumiBinary ?? this.pulumiBinary,
      runInShell: runInShell ?? this.runInShell,
      skipVersionCheck: skipVersionCheck ?? this.skipVersionCheck,
      remote: remote ?? this.remote,
      remoteArgs: remoteArgs ?? this.remoteArgs,
      commandRunner: commandRunner ?? this.commandRunner,
      stdoutEncoding: stdoutEncoding ?? this.stdoutEncoding,
      stderrEncoding: stderrEncoding ?? this.stderrEncoding,
    );
  }
}

/// Workspace-backed automation entrypoint for Pulumi CLI operations.
class LocalWorkspace {
  LocalWorkspace._({
    required this.workDir,
    required this.environmentVariables,
    required this.pulumiBinary,
    required this.runInShell,
    required this.skipVersionCheck,
    required this.remote,
    required this.remoteArgs,
    required PulumiCommandRunner commandRunner,
    required this.stdoutEncoding,
    required this.stderrEncoding,
  }) : _commandRunner = commandRunner;

  /// Creates a workspace from [options].
  static Future<LocalWorkspace> create([
    LocalWorkspaceOptions options = const LocalWorkspaceOptions(),
  ]) async {
    final workDir = options.workDir ?? Directory.current.path;
    final dir = Directory(workDir);
    if (!await dir.exists()) {
      throw ArgumentError.value(workDir, 'workDir', 'Directory does not exist');
    }

    return LocalWorkspace._(
      workDir: workDir,
      environmentVariables: Map<String, String>.unmodifiable(
        options.environmentVariables,
      ),
      pulumiBinary: options.pulumiBinary,
      runInShell: options.runInShell,
      skipVersionCheck: options.skipVersionCheck,
      remote: options.remote,
      remoteArgs: List<String>.unmodifiable(options.remoteArgs),
      commandRunner: options.commandRunner ?? _defaultCommandRunner,
      stdoutEncoding: options.stdoutEncoding,
      stderrEncoding: options.stderrEncoding,
    );
  }

  /// Creates a new stack for a local Pulumi program.
  static Future<Stack> createStack(
    LocalProgramArgs args, {
    LocalWorkspaceOptions options = const LocalWorkspaceOptions(),
  }) async {
    final workspace = await create(options.copyWith(workDir: args.workDir));
    return Stack.create(args.stackName, workspace);
  }

  /// Selects an existing stack for a local Pulumi program.
  static Future<Stack> selectStack(
    LocalProgramArgs args, {
    LocalWorkspaceOptions options = const LocalWorkspaceOptions(),
  }) async {
    final workspace = await create(options.copyWith(workDir: args.workDir));
    return Stack.select(args.stackName, workspace);
  }

  /// Creates the stack when missing, otherwise selects the existing stack.
  static Future<Stack> createOrSelectStack(
    LocalProgramArgs args, {
    LocalWorkspaceOptions options = const LocalWorkspaceOptions(),
  }) async {
    final workspace = await create(options.copyWith(workDir: args.workDir));
    return Stack.createOrSelect(args.stackName, workspace);
  }

  /// Working directory for this workspace.
  final String workDir;

  /// Environment variables merged into every command.
  final Map<String, String> environmentVariables;

  /// Pulumi executable path/name.
  final String pulumiBinary;

  /// Whether commands run in a shell.
  final bool runInShell;

  /// Whether Pulumi version compatibility checks are disabled.
  final bool skipVersionCheck;

  /// Whether remote mode is enabled for stack operations.
  final bool remote;

  /// Remote operation CLI args.
  final List<String> remoteArgs;

  /// Encoding for stdout.
  final Encoding stdoutEncoding;

  /// Encoding for stderr.
  final Encoding stderrEncoding;

  final PulumiCommandRunner _commandRunner;

  /// Executes `pulumi <arguments>`.
  Future<PulumiCommandResult> runPulumiCommand(
    List<String> arguments, {
    bool check = true,
    String? workingDirectory,
    Map<String, String>? extraEnvironment,
  }) async {
    final effectiveArgs = _remoteArgsForCommand(arguments);

    final request = PulumiCommandRequest(
      executable: pulumiBinary,
      arguments: effectiveArgs,
      workingDirectory: workingDirectory ?? workDir,
      environment: <String, String>{
        ...Platform.environment,
        ...environmentVariables,
        if (remote) 'PULUMI_EXPERIMENTAL': 'true',
        if (extraEnvironment != null) ...extraEnvironment,
      },
      runInShell: runInShell,
      stdoutEncoding: stdoutEncoding,
      stderrEncoding: stderrEncoding,
    );

    final result = await _commandRunner(request);
    if (check && !result.succeeded) {
      throw createCommandException(request, result);
    }
    return result;
  }

  List<String> _remoteArgsForCommand(List<String> arguments) {
    if (!remote || remoteArgs.isEmpty || !_supportsRemoteArguments(arguments)) {
      return List<String>.from(arguments);
    }
    return <String>[...arguments, ...remoteArgs];
  }

  bool _supportsRemoteArguments(List<String> arguments) {
    if (arguments.isEmpty) {
      return false;
    }
    final command = arguments.first;
    if (command == 'up' ||
        command == 'preview' ||
        command == 'refresh' ||
        command == 'destroy') {
      return true;
    }
    if (command == 'stack' && arguments.length > 1) {
      final stackCommand = arguments[1];
      return stackCommand == 'init' || stackCommand == 'select';
    }
    return false;
  }

  /// Creates a stack in this workspace.
  Future<void> createStackInWorkspace(String stackName) async {
    await runPulumiCommand(['stack', 'init', stackName]);
  }

  /// Selects an existing stack in this workspace.
  Future<void> selectStackInWorkspace(String stackName) async {
    await runPulumiCommand(['stack', 'select', stackName]);
  }

  /// Creates the stack when missing, otherwise selects it.
  Future<Stack> createOrSelectStackInWorkspace(String stackName) async {
    final selectResult = await runPulumiCommand([
      'stack',
      'select',
      stackName,
    ], check: false);
    if (selectResult.succeeded) {
      return Stack(stackName, this);
    }

    if (!_looksLikeMissingStackError(selectResult)) {
      final request = PulumiCommandRequest(
        executable: pulumiBinary,
        arguments: ['stack', 'select', stackName],
        workingDirectory: workDir,
        environment: <String, String>{
          ...Platform.environment,
          ...environmentVariables,
        },
        runInShell: runInShell,
        stdoutEncoding: stdoutEncoding,
        stderrEncoding: stderrEncoding,
      );
      throw PulumiCommandException(request: request, result: selectResult);
    }

    await createStackInWorkspace(stackName);
    return Stack(stackName, this);
  }

  /// Removes an existing stack from this workspace.
  Future<void> removeStack(
    String stackName, {
    bool yes = true,
    bool force = false,
  }) async {
    final args = <String>['stack', 'rm', stackName];
    if (yes) {
      args.add('--yes');
    }
    if (force) {
      args.add('--force');
    }
    await runPulumiCommand(args);
  }

  /// Resolves and validates the installed Pulumi CLI version.
  Future<PulumiVersion?> pulumiVersion({
    PulumiVersion minimumVersion = minimumPulumiVersion,
    bool? skipCheck,
  }) async {
    final result = await runPulumiCommand(
      <String>['version'],
      extraEnvironment: const <String, String>{
        'PULUMI_SKIP_UPDATE_CHECK': 'true',
      },
    );

    final output = result.stdout.trim().split('\n').first.trim();
    final shouldSkipCheck =
        skipCheck == true ||
        skipVersionCheck ||
        Platform.environment.containsKey(skipVersionCheckVar);
    return parseAndValidatePulumiVersion(
      minimumVersion,
      output,
      shouldSkipCheck,
    );
  }

  /// Returns information about the currently authenticated user.
  Future<Map<String, dynamic>> whoAmI() async {
    final jsonResult = await runPulumiCommand(<String>[
      'whoami',
      '--json',
    ], check: false);
    if (jsonResult.succeeded) {
      final decoded = jsonDecode(jsonResult.stdout);
      if (decoded is Map) {
        return decoded.map((key, value) => MapEntry('$key', value));
      }
      throw FormatException('Expected object JSON from `pulumi whoami --json`');
    }

    final textResult = await runPulumiCommand(<String>['whoami']);
    return <String, dynamic>{'user': textResult.stdout.trim()};
  }

  /// Returns stack summaries from `pulumi stack ls --json`.
  Future<List<AutomationStackSummary>> listStacks({bool all = false}) async {
    final args = <String>['stack', 'ls', '--json'];
    if (all) {
      args.add('--all');
    }

    final result = await runPulumiCommand(args);
    final decoded = jsonDecode(result.stdout);
    if (decoded is! List) {
      throw FormatException(
        'Expected array JSON from `pulumi stack ls --json`',
      );
    }

    return decoded
        .whereType<Map>()
        .map((entry) {
          final mapped = entry.map((key, value) => MapEntry('$key', value));
          return AutomationStackSummary(
            name: '${mapped['name'] ?? ''}',
            current: mapped['current'] == true,
            raw: mapped,
          );
        })
        .toList(growable: false);
  }

  /// Returns the currently selected stack summary, if one exists.
  Future<AutomationStackSummary?> stack() async {
    final stacks = await listStacks();
    for (final summary in stacks) {
      if (summary.current) {
        return summary;
      }
    }
    return null;
  }

  bool _looksLikeMissingStackError(PulumiCommandResult result) {
    final combined = '${result.stdout}\n${result.stderr}'.toLowerCase();
    return combined.contains('no stack named') ||
        combined.contains('stack does not exist') ||
        combined.contains('not found');
  }
}
