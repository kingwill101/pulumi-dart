import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import 'command.dart';
import 'config.dart';
import 'settings.dart';
import 'stack.dart';
import 'version.dart';

const List<String> _settingsExtensions = <String>['.yaml', '.yml', '.json'];
const Map<String, String> _stackSettingsSerializedKeys = <String, String>{
  'secretsprovider': 'secretsProvider',
  'encryptedkey': 'encryptedKey',
  'encryptionsalt': 'encryptionSalt',
};

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

/// Metadata for an installed Pulumi plugin.
class AutomationPluginInfo {
  const AutomationPluginInfo({
    required this.name,
    required this.path,
    required this.kind,
    required this.size,
    required this.serverURL,
    required this.raw,
    this.version,
    this.installTime,
    this.lastUsedTime,
  });

  factory AutomationPluginInfo.fromJson(Map<String, dynamic> json) {
    DateTime? parseDate(String key) {
      final value = json[key];
      if (value == null) {
        return null;
      }
      return DateTime.tryParse('$value');
    }

    return AutomationPluginInfo(
      name: '${json['name'] ?? ''}',
      path: '${json['path'] ?? ''}',
      kind: '${json['kind'] ?? ''}',
      version: json['version'] == null ? null : '${json['version']}',
      size: (json['size'] is num) ? (json['size'] as num).toInt() : 0,
      installTime: parseDate('installTime'),
      lastUsedTime: parseDate('lastUsedTime'),
      serverURL: '${json['serverURL'] ?? ''}',
      raw: json,
    );
  }

  final String name;
  final String path;
  final String kind;
  final String? version;
  final int size;
  final DateTime? installTime;
  final DateTime? lastUsedTime;
  final String serverURL;
  final Map<String, dynamic> raw;
}

/// Options for `pulumi install`.
class AutomationInstallOptions {
  const AutomationInstallOptions({
    this.noPlugins = false,
    this.noDependencies = false,
    this.reinstall = false,
    this.useLanguageVersionTools = false,
  });

  final bool noPlugins;
  final bool noDependencies;
  final bool reinstall;
  final bool useLanguageVersionTools;
}

/// Callback used to provide additional CLI arguments per stack operation.
typedef AutomationArgsSerializer =
    Future<List<String>> Function(String stackName);

/// Callback invoked after a stack operation command completes.
typedef AutomationPostCommandCallback = Future<void> Function(String stackName);

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

/// Arguments for source-based inline automation programs.
///
/// The [program] is full Dart source code written to `bin/<project>.dart`.
/// This enables an "inline-defined" workflow while still using the Pulumi CLI.
class InlineProgramArgs {
  const InlineProgramArgs({
    required this.stackName,
    required this.projectName,
    required this.program,
    this.workDir,
    this.description,
  });

  /// Stack name (for example `dev`, `org/project/dev`).
  final String stackName;

  /// Pulumi project name written into `Pulumi.yaml`.
  final String projectName;

  /// Full Dart source written to `bin/<project>.dart`.
  final String program;

  /// Optional project directory. When omitted, a temporary directory is created.
  final String? workDir;

  /// Optional project description written to `Pulumi.yaml`.
  final String? description;
}

/// Options for [LocalWorkspace].
class LocalWorkspaceOptions {
  const LocalWorkspaceOptions({
    this.workDir,
    this.environmentVariables = const <String, String>{},
    this.pulumiBinary = 'pulumi',
    this.pulumiHome,
    this.secretsProvider,
    this.runInShell = true,
    this.skipVersionCheck = false,
    this.remote = false,
    this.remoteArgs = const <String>[],
    this.serializeArgsForOp,
    this.postCommandCallback,
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

  /// Optional `$PULUMI_HOME` override.
  final String? pulumiHome;

  /// Optional stack secrets provider used on stack init.
  final String? secretsProvider;

  /// Whether to run commands in a shell.
  final bool runInShell;

  /// Whether to skip Pulumi CLI version compatibility checks.
  final bool skipVersionCheck;

  /// Whether this workspace should run operations in remote mode.
  final bool remote;

  /// Additional CLI args appended for remote operations.
  final List<String> remoteArgs;

  /// Optional callback to append extra args for stack operations.
  final AutomationArgsSerializer? serializeArgsForOp;

  /// Optional callback invoked after each stack operation command.
  final AutomationPostCommandCallback? postCommandCallback;

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
    String? pulumiHome,
    String? secretsProvider,
    bool? runInShell,
    bool? skipVersionCheck,
    bool? remote,
    List<String>? remoteArgs,
    AutomationArgsSerializer? serializeArgsForOp,
    AutomationPostCommandCallback? postCommandCallback,
    PulumiCommandRunner? commandRunner,
    Encoding? stdoutEncoding,
    Encoding? stderrEncoding,
  }) {
    return LocalWorkspaceOptions(
      workDir: workDir ?? this.workDir,
      environmentVariables: environmentVariables ?? this.environmentVariables,
      pulumiBinary: pulumiBinary ?? this.pulumiBinary,
      pulumiHome: pulumiHome ?? this.pulumiHome,
      secretsProvider: secretsProvider ?? this.secretsProvider,
      runInShell: runInShell ?? this.runInShell,
      skipVersionCheck: skipVersionCheck ?? this.skipVersionCheck,
      remote: remote ?? this.remote,
      remoteArgs: remoteArgs ?? this.remoteArgs,
      serializeArgsForOp: serializeArgsForOp ?? this.serializeArgsForOp,
      postCommandCallback: postCommandCallback ?? this.postCommandCallback,
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
    required this.pulumiHome,
    required this.secretsProvider,
    required this.runInShell,
    required this.skipVersionCheck,
    required this.remote,
    required this.remoteArgs,
    required this.serializeArgsForOp,
    required this.postCommandCallback,
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
      environmentVariables: Map<String, String>.from(
        options.environmentVariables,
      ),
      pulumiBinary: options.pulumiBinary,
      pulumiHome: options.pulumiHome,
      secretsProvider: options.secretsProvider,
      runInShell: options.runInShell,
      skipVersionCheck: options.skipVersionCheck,
      remote: options.remote,
      remoteArgs: List<String>.unmodifiable(options.remoteArgs),
      serializeArgsForOp: options.serializeArgsForOp,
      postCommandCallback: options.postCommandCallback,
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

  /// Creates a new stack for a source-based inline program.
  static Future<Stack> createInlineStack(
    InlineProgramArgs args, {
    LocalWorkspaceOptions options = const LocalWorkspaceOptions(),
  }) async {
    final workDir = await _prepareInlineProject(args);
    return createStack(
      LocalProgramArgs(stackName: args.stackName, workDir: workDir),
      options: options.copyWith(workDir: workDir),
    );
  }

  /// Selects an existing stack for a source-based inline program.
  static Future<Stack> selectInlineStack(
    InlineProgramArgs args, {
    LocalWorkspaceOptions options = const LocalWorkspaceOptions(),
  }) async {
    final workDir = await _prepareInlineProject(args);
    return selectStack(
      LocalProgramArgs(stackName: args.stackName, workDir: workDir),
      options: options.copyWith(workDir: workDir),
    );
  }

  /// Creates or selects a stack for a source-based inline program.
  static Future<Stack> createOrSelectInlineStack(
    InlineProgramArgs args, {
    LocalWorkspaceOptions options = const LocalWorkspaceOptions(),
  }) async {
    final workDir = await _prepareInlineProject(args);
    return createOrSelectStack(
      LocalProgramArgs(stackName: args.stackName, workDir: workDir),
      options: options.copyWith(workDir: workDir),
    );
  }

  static Future<String> _prepareInlineProject(InlineProgramArgs args) async {
    final providedDir = args.workDir;
    final resolvedDir = providedDir == null || providedDir.trim().isEmpty
        ? (await Directory.systemTemp.createTemp('pulumi-inline-')).path
        : providedDir;

    final projectDir = Directory(resolvedDir);
    if (!await projectDir.exists()) {
      await projectDir.create(recursive: true);
    }

    final packageName = _sanitizePackageName(args.projectName);
    final programFileName = '$packageName.dart';
    final binDir = Directory(p.join(resolvedDir, 'bin'));
    if (!await binDir.exists()) {
      await binDir.create(recursive: true);
    }

    final pulumiYamlPath = p.join(resolvedDir, 'Pulumi.yaml');
    final pulumiYaml = File(pulumiYamlPath);
    if (!await pulumiYaml.exists()) {
      final descriptionLine = args.description == null || args.description!.isEmpty
          ? ''
          : 'description: ${args.description}\n';
      await pulumiYaml.writeAsString(
        'name: ${args.projectName}\n'
        'runtime: dart\n'
        '${descriptionLine}main: bin/$programFileName\n',
        encoding: utf8,
      );
    }

    final pubspecPath = p.join(resolvedDir, 'pubspec.yaml');
    final pubspec = File(pubspecPath);
    if (!await pubspec.exists()) {
      final pulumiPathDependency = Platform.environment['PULUMI_DART_PULUMI_DEPENDENCY_PATH'];
      final pulumiDependency = (pulumiPathDependency != null &&
              pulumiPathDependency.trim().isNotEmpty)
          ? "  pulumi:\n    path: '${pulumiPathDependency.replaceAll("'", "''")}'\n"
          : '  pulumi: ^0.0.1-dev\n';
      await pubspec.writeAsString(
        'name: $packageName\n'
        'description: Inline Pulumi Dart automation project.\n'
        'publish_to: none\n'
        'environment:\n'
        '  sdk: ">=3.10.0 <4.0.0"\n'
        'dependencies:\n'
        '$pulumiDependency',
        encoding: utf8,
      );
    }

    final programPath = p.join(resolvedDir, 'bin', programFileName);
    await File(programPath).writeAsString(args.program, encoding: utf8);

    return resolvedDir;
  }

  static String _sanitizePackageName(String projectName) {
    final lowered = projectName.toLowerCase();
    final normalized = lowered.replaceAll(RegExp(r'[^a-z0-9_]'), '_');
    final squashed = normalized.replaceAll(RegExp(r'_+'), '_');
    if (squashed.isEmpty) {
      return 'pulumi_inline_project';
    }
    if (RegExp(r'^[0-9]').hasMatch(squashed)) {
      return 'p_$squashed';
    }
    return squashed;
  }

  /// Working directory for this workspace.
  final String workDir;

  /// Environment variables merged into every command.
  final Map<String, String> environmentVariables;

  /// Returns workspace-scoped environment variables.
  Map<String, String> getEnvVars() {
    return Map<String, String>.unmodifiable(environmentVariables);
  }

  /// Replaces all workspace-scoped environment variables.
  void setEnvVars(Map<String, String> envVars) {
    environmentVariables
      ..clear()
      ..addAll(envVars);
  }

  /// Sets a single workspace-scoped environment variable.
  void setEnvVar(String key, String value) {
    environmentVariables[key] = value;
  }

  /// Removes a workspace-scoped environment variable.
  void unsetEnvVar(String key) {
    environmentVariables.remove(key);
  }

  /// Pulumi executable path/name.
  final String pulumiBinary;

  /// Optional `$PULUMI_HOME` override.
  final String? pulumiHome;

  /// Optional stack secrets provider used on stack init.
  final String? secretsProvider;

  /// Whether commands run in a shell.
  final bool runInShell;

  /// Whether Pulumi version compatibility checks are disabled.
  final bool skipVersionCheck;

  /// Whether remote mode is enabled for stack operations.
  final bool remote;

  /// Remote operation CLI args.
  final List<String> remoteArgs;

  /// Optional callback to append args to stack operations.
  final AutomationArgsSerializer? serializeArgsForOp;

  /// Optional callback invoked after stack operations.
  final AutomationPostCommandCallback? postCommandCallback;

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
        if (pulumiHome != null && pulumiHome!.trim().isNotEmpty)
          'PULUMI_HOME': pulumiHome!,
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

  /// Returns additional args to append to stack operation commands.
  Future<List<String>> serializeArgsForOperation(String stackName) async {
    final callback = serializeArgsForOp;
    if (callback == null) {
      return const <String>[];
    }
    return callback(stackName);
  }

  /// Runs post-command callback for stack operations.
  Future<void> runPostCommandCallback(String stackName) async {
    final callback = postCommandCallback;
    if (callback == null) {
      return;
    }
    await callback(stackName);
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
    final args = <String>['stack', 'init', stackName];
    if (secretsProvider != null && secretsProvider!.trim().isNotEmpty) {
      args.addAll(<String>['--secrets-provider', secretsProvider!]);
    }
    await runPulumiCommand(args);
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
    bool preserveConfig = false,
  }) async {
    final args = <String>['stack', 'rm', stackName];
    if (yes) {
      args.add('--yes');
    }
    if (force) {
      args.add('--force');
    }
    if (preserveConfig) {
      args.add('--preserve-config');
    }
    await runPulumiCommand(args);
  }

  /// Returns project settings read from `Pulumi.{yaml,yml,json}`.
  Future<Map<String, dynamic>> projectSettings() async {
    final path = _findSettingsPath('Pulumi');
    if (path == null) {
      throw StateError(
        'failed to find project settings file in workdir: $workDir',
      );
    }
    return _loadSettings(path);
  }

  /// Saves project settings into `Pulumi.{yaml,yml,json}`.
  Future<void> saveProjectSettings(Map<String, dynamic> settings) async {
    final path = _findSettingsPath('Pulumi') ?? p.join(workDir, 'Pulumi.yaml');
    await _writeSettings(path, settings);
  }

  /// Returns typed project settings.
  Future<ProjectSettings> projectSettingsObject() async {
    return ProjectSettings.fromJson(await projectSettings());
  }

  /// Saves typed project settings.
  Future<void> saveProjectSettingsObject(ProjectSettings settings) {
    return saveProjectSettings(settings.toJson());
  }

  /// Returns stack settings from `Pulumi.<stack>.{yaml,yml,json}`.
  Future<Map<String, dynamic>> stackSettings(String stackName) async {
    final stackSettingsName = _stackSettingsName(stackName);
    final path = _findSettingsPath('Pulumi.$stackSettingsName');
    if (path == null) {
      throw StateError(
        'failed to find stack settings file in workdir: $workDir',
      );
    }

    final settings = _loadSettings(path);
    for (final entry in _stackSettingsSerializedKeys.entries) {
      final serializedKey = entry.key;
      final canonicalKey = entry.value;
      if (settings.containsKey(serializedKey)) {
        settings[canonicalKey] = settings[serializedKey];
        settings.remove(serializedKey);
      }
    }
    return settings;
  }

  /// Saves stack settings to `Pulumi.<stack>.{yaml,yml,json}`.
  Future<void> saveStackSettings(
    String stackName,
    Map<String, dynamic> settings,
  ) async {
    final stackSettingsName = _stackSettingsName(stackName);
    final path =
        _findSettingsPath('Pulumi.$stackSettingsName') ??
        p.join(workDir, 'Pulumi.$stackSettingsName.yaml');

    final serialized = Map<String, dynamic>.from(settings);
    for (final entry in _stackSettingsSerializedKeys.entries) {
      final serializedKey = entry.key;
      final canonicalKey = entry.value;
      if (serialized.containsKey(canonicalKey)) {
        serialized[serializedKey] = serialized[canonicalKey];
        serialized.remove(canonicalKey);
      }
    }

    await _writeSettings(path, serialized);
  }

  /// Returns typed stack settings.
  Future<StackSettings> stackSettingsObject(String stackName) async {
    return StackSettings.fromJson(await stackSettings(stackName));
  }

  /// Saves typed stack settings.
  Future<void> saveStackSettingsObject(
    String stackName,
    StackSettings settings,
  ) {
    return saveStackSettings(stackName, settings.toJson());
  }

  /// Installs a Pulumi plugin in this workspace.
  Future<void> installPlugin(
    String name,
    String version, {
    String kind = 'resource',
  }) async {
    await runPulumiCommand(<String>['plugin', 'install', kind, name, version]);
  }

  /// Installs project plugins/dependencies via `pulumi install`.
  Future<void> install([
    AutomationInstallOptions options = const AutomationInstallOptions(),
  ]) async {
    final args = <String>['install'];
    if (options.useLanguageVersionTools) {
      args.add('--use-language-version-tools');
    }
    if (options.noPlugins) {
      args.add('--no-plugins');
    }
    if (options.noDependencies) {
      args.add('--no-dependencies');
    }
    if (options.reinstall) {
      args.add('--reinstall');
    }
    await runPulumiCommand(args);
  }

  /// Reads a single config value for [stackName].
  Future<AutomationConfigValue> getConfig(
    String stackName,
    String key, {
    bool path = false,
  }) async {
    final args = <String>['config', 'get'];
    if (path) {
      args.add('--path');
    }
    args.addAll(<String>[key, '--json', '--stack', stackName]);
    final result = await runPulumiCommand(args);
    return _decodeConfigValue(result.stdout);
  }

  /// Reads all config values for [stackName].
  Future<Map<String, AutomationConfigValue>> getAllConfig(
    String stackName,
  ) async {
    final result = await runPulumiCommand(<String>[
      'config',
      '--show-secrets',
      '--json',
      '--stack',
      stackName,
    ]);

    final decoded = jsonDecode(result.stdout);
    if (decoded is! Map) {
      throw FormatException('Expected object JSON from `pulumi config --json`');
    }

    final config = <String, AutomationConfigValue>{};
    for (final entry in decoded.entries) {
      config['${entry.key}'] = _decodeConfigValueFromDecoded(entry.value);
    }
    return config;
  }

  /// Sets one config key on [stackName].
  Future<PulumiCommandResult> setConfig(
    String stackName,
    String key,
    String value, {
    bool path = false,
    bool secret = false,
  }) {
    final args = <String>['config', 'set'];
    if (path) {
      args.add('--path');
    }
    args.addAll(<String>[
      key,
      '--stack',
      stackName,
      secret ? '--secret' : '--plaintext',
      '--non-interactive',
      '--',
      value,
    ]);
    return runPulumiCommand(args);
  }

  /// Sets multiple config values on [stackName].
  Future<PulumiCommandResult> setAllConfig(
    String stackName,
    Map<String, AutomationConfigValue> config, {
    bool path = false,
  }) {
    final args = <String>['config', 'set-all', '--stack', stackName];
    if (path) {
      args.add('--path');
    }

    for (final entry in config.entries) {
      args.add(entry.value.secret ? '--secret' : '--plaintext');
      args.add('${entry.key}=${entry.value.value}');
    }

    return runPulumiCommand(args);
  }

  /// Sets all config values on [stackName] from `pulumi config --json` shape.
  Future<PulumiCommandResult> setAllConfigJson(
    String stackName,
    String configJson,
  ) {
    return runPulumiCommand(<String>[
      'config',
      'set-all',
      '--stack',
      stackName,
      '--json',
      configJson,
    ]);
  }

  /// Removes one config key from [stackName].
  Future<PulumiCommandResult> removeConfig(
    String stackName,
    String key, {
    bool path = false,
  }) {
    final args = <String>['config', 'rm'];
    if (path) {
      args.add('--path');
    }
    args.addAll(<String>[key, '--stack', stackName]);
    return runPulumiCommand(args);
  }

  /// Removes multiple config keys from [stackName].
  Future<PulumiCommandResult> removeAllConfig(
    String stackName,
    Iterable<String> keys, {
    bool path = false,
  }) {
    final filteredKeys = keys.where((key) => key.trim().isNotEmpty).toList();
    if (filteredKeys.isEmpty) {
      throw ArgumentError.value(keys, 'keys', 'At least one key is required');
    }

    final args = <String>['config', 'rm-all'];
    if (path) {
      args.add('--path');
    }
    args.addAll(<String>[...filteredKeys, '--stack', stackName]);
    return runPulumiCommand(args);
  }

  /// Refreshes config for [stackName], then returns the resulting config map.
  Future<Map<String, AutomationConfigValue>> refreshConfig(
    String stackName,
  ) async {
    await runPulumiCommand(<String>[
      'config',
      'refresh',
      '--force',
      '--stack',
      stackName,
    ]);
    return getAllConfig(stackName);
  }

  /// Adds one or more ESC environments to [stackName].
  Future<PulumiCommandResult> addEnvironments(
    String stackName,
    Iterable<String> environments, {
    bool yes = true,
  }) {
    final names = environments.where((e) => e.trim().isNotEmpty).toList();
    if (names.isEmpty) {
      throw ArgumentError.value(
        environments,
        'environments',
        'At least one environment is required',
      );
    }

    final args = <String>[
      'config',
      'env',
      'add',
      ...names,
      '--stack',
      stackName,
    ];
    if (yes) {
      args.add('--yes');
    }
    return runPulumiCommand(args);
  }

  /// Lists ESC environments imported by [stackName].
  Future<List<String>> listEnvironments(String stackName) async {
    final result = await runPulumiCommand(<String>[
      'config',
      'env',
      'ls',
      '--stack',
      stackName,
      '--json',
    ]);

    final decoded = jsonDecode(result.stdout);
    if (decoded is! List) {
      throw FormatException(
        'Expected a JSON array from `pulumi config env ls --json`',
      );
    }

    return decoded.map((value) => '$value').toList(growable: false);
  }

  /// Removes one ESC environment from [stackName].
  Future<PulumiCommandResult> removeEnvironment(
    String stackName,
    String environment, {
    bool yes = true,
  }) {
    final args = <String>[
      'config',
      'env',
      'rm',
      environment,
      '--stack',
      stackName,
    ];
    if (yes) {
      args.add('--yes');
    }
    return runPulumiCommand(args);
  }

  /// Returns a single tag value for [stackName].
  Future<String> getTag(String stackName, String key) async {
    final result = await runPulumiCommand(<String>[
      'stack',
      'tag',
      'get',
      key,
      '--stack',
      stackName,
    ]);
    return result.stdout.trim();
  }

  /// Sets a tag on [stackName].
  Future<PulumiCommandResult> setTag(
    String stackName,
    String key,
    String value,
  ) {
    return runPulumiCommand(<String>[
      'stack',
      'tag',
      'set',
      key,
      value,
      '--stack',
      stackName,
    ]);
  }

  /// Removes a tag from [stackName].
  Future<PulumiCommandResult> removeTag(String stackName, String key) {
    return runPulumiCommand(<String>[
      'stack',
      'tag',
      'rm',
      key,
      '--stack',
      stackName,
    ]);
  }

  /// Lists tags for [stackName].
  Future<Map<String, String>> listTags(String stackName) async {
    final result = await runPulumiCommand(<String>[
      'stack',
      'tag',
      'ls',
      '--json',
      '--stack',
      stackName,
    ]);
    final decoded = jsonDecode(result.stdout);
    if (decoded is! Map) {
      throw FormatException(
        'Expected object JSON from `pulumi stack tag ls --json`',
      );
    }
    return decoded.map(
      (key, value) => MapEntry('$key', value == null ? '' : '$value'),
    );
  }

  /// Returns stack outputs for [stackName] from last successful update.
  Future<Map<String, dynamic>> stackOutputs(
    String stackName, {
    bool showSecrets = false,
  }) async {
    final args = <String>['stack', 'output', '--json', '--stack', stackName];
    if (showSecrets) {
      args.add('--show-secrets');
    }
    final result = await runPulumiCommand(args);
    final decoded = jsonDecode(result.stdout);
    if (decoded is! Map) {
      throw FormatException(
        'Expected object JSON from `pulumi stack output --json`',
      );
    }
    return decoded.map((key, value) => MapEntry('$key', value));
  }

  /// Returns stack outputs with secret metadata for [stackName].
  Future<Map<String, AutomationOutputValue>> stackOutputsWithMetadata(
    String stackName,
  ) async {
    final masked = await stackOutputs(stackName, showSecrets: false);
    final plaintext = await stackOutputs(stackName, showSecrets: true);
    final outputs = <String, AutomationOutputValue>{};

    for (final entry in plaintext.entries) {
      final key = entry.key;
      outputs[key] = AutomationOutputValue(
        value: entry.value,
        secret: masked[key] == '[secret]',
      );
    }

    return outputs;
  }

  /// Installs a Pulumi resource plugin from a third-party server.
  Future<void> installPluginFromServer(
    String name,
    String version,
    String server,
  ) async {
    await runPulumiCommand(<String>[
      'plugin',
      'install',
      'resource',
      name,
      version,
      '--server',
      server,
    ]);
  }

  /// Removes plugins matching [kind], optional [name], and optional [versionRange].
  Future<void> removePlugin({
    String kind = 'resource',
    String? name,
    String? versionRange,
  }) async {
    final args = <String>['plugin', 'rm', kind];
    if (name != null && name.trim().isNotEmpty) {
      args.add(name);
    }
    if (versionRange != null && versionRange.trim().isNotEmpty) {
      args.add(versionRange);
    }
    args.add('--yes');
    await runPulumiCommand(args);
  }

  /// Returns plugins installed in this workspace.
  Future<List<AutomationPluginInfo>> listPlugins() async {
    final result = await runPulumiCommand(<String>['plugin', 'ls', '--json']);
    final decoded = jsonDecode(result.stdout);
    if (decoded is! List) {
      throw FormatException(
        'Expected array JSON from `pulumi plugin ls --json`',
      );
    }

    return decoded
        .whereType<Map>()
        .map((entry) {
          final mapped = entry.map((key, value) => MapEntry('$key', value));
          return AutomationPluginInfo.fromJson(mapped);
        })
        .toList(growable: false);
  }

  /// Exports stack deployment state.
  Future<Map<String, dynamic>> exportStack(
    String stackName, {
    bool showSecrets = true,
  }) async {
    final args = <String>['stack', 'export', '--stack', stackName];
    if (showSecrets) {
      args.add('--show-secrets');
    }
    final result = await runPulumiCommand(args);
    final decoded = jsonDecode(result.stdout);
    if (decoded is! Map) {
      throw FormatException(
        'Expected object JSON from `pulumi stack export --stack $stackName`',
      );
    }
    return decoded.map((key, value) => MapEntry('$key', value));
  }

  /// Imports deployment state into an existing stack.
  Future<void> importStack(String stackName, Map<String, dynamic> state) async {
    final tempDir = await Directory.systemTemp.createTemp('automation-import-');
    final filePath = p.join(tempDir.path, 'stack-state.json');
    try {
      final encoder = const JsonEncoder.withIndent('  ');
      await File(
        filePath,
      ).writeAsString(encoder.convert(state), encoding: utf8);
      await runPulumiCommand(<String>[
        'stack',
        'import',
        '--file',
        filePath,
        '--stack',
        stackName,
      ]);
    } finally {
      final file = File(filePath);
      if (await file.exists()) {
        await file.delete();
      }
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    }
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

  String? _findSettingsPath(String baseName) {
    for (final ext in _settingsExtensions) {
      final path = p.join(workDir, '$baseName$ext');
      if (File(path).existsSync()) {
        return path;
      }
    }
    return null;
  }

  String _stackSettingsName(String stackName) {
    final segments = stackName.split('/');
    if (segments.isEmpty) {
      return stackName;
    }
    return segments.last;
  }

  Map<String, dynamic> _loadSettings(String path) {
    final contents = File(path).readAsStringSync();
    dynamic decoded;
    if (path.endsWith('.json')) {
      decoded = jsonDecode(contents);
    } else {
      decoded = loadYaml(contents);
    }

    if (decoded is! Map) {
      throw FormatException('Expected object settings in $path');
    }
    return _normalizeMap(decoded);
  }

  Future<void> _writeSettings(
    String path,
    Map<String, dynamic> settings,
  ) async {
    // JSON is also valid YAML, so one serializer works across all extensions.
    final encoder = const JsonEncoder.withIndent('  ');
    await File(path).writeAsString(encoder.convert(settings), encoding: utf8);
  }

  dynamic _normalizeValue(dynamic value) {
    if (value is YamlMap || value is Map) {
      return _normalizeMap(value as Map);
    }
    if (value is YamlList || value is List) {
      return (value as List)
          .map<dynamic>((entry) => _normalizeValue(entry))
          .toList(growable: false);
    }
    return value;
  }

  Map<String, dynamic> _normalizeMap(Map raw) {
    return raw.map<String, dynamic>(
      (key, value) => MapEntry('$key', _normalizeValue(value)),
    );
  }

  AutomationConfigValue _decodeConfigValue(String rawJson) {
    return _decodeConfigValueFromDecoded(jsonDecode(rawJson));
  }

  AutomationConfigValue _decodeConfigValueFromDecoded(dynamic decoded) {
    if (decoded is Map) {
      final value = decoded['value'];
      final secret = decoded['secret'] == true;
      return AutomationConfigValue(value: '${value ?? ''}', secret: secret);
    }
    return AutomationConfigValue(value: '$decoded', secret: false);
  }
}
