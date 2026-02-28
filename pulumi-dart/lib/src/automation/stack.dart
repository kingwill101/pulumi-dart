import 'dart:convert';

import 'command.dart';
import 'local_workspace.dart';

/// Automation config value returned by `pulumi config` commands.
class AutomationConfigValue {
  const AutomationConfigValue({required this.value, required this.secret});

  final String value;
  final bool secret;
}

/// Automation stack handle scoped to a [LocalWorkspace].
class Stack {
  Stack(this.name, this.workspace);

  /// Creates a new stack.
  static Future<Stack> create(
    String stackName,
    LocalWorkspace workspace,
  ) async {
    await workspace.createStackInWorkspace(stackName);
    return Stack(stackName, workspace);
  }

  /// Selects an existing stack.
  static Future<Stack> select(
    String stackName,
    LocalWorkspace workspace,
  ) async {
    await workspace.selectStackInWorkspace(stackName);
    return Stack(stackName, workspace);
  }

  /// Creates the stack when missing, otherwise selects it.
  static Future<Stack> createOrSelect(
    String stackName,
    LocalWorkspace workspace,
  ) async {
    return workspace.createOrSelectStackInWorkspace(stackName);
  }

  /// Stack name.
  final String name;

  /// Parent workspace used to execute commands.
  final LocalWorkspace workspace;

  /// Sets a stack configuration value.
  Future<PulumiCommandResult> setConfig(
    String key,
    String value, {
    bool path = false,
    bool secret = false,
  }) async {
    final args = <String>['config', 'set'];
    if (path) {
      args.add('--path');
    }
    args.addAll(<String>[
      key,
      '--stack',
      name,
      secret ? '--secret' : '--plaintext',
      '--non-interactive',
      '--',
      value,
    ]);
    return workspace.runPulumiCommand(args);
  }

  /// Sets multiple config values on this stack in one command.
  Future<PulumiCommandResult> setAllConfig(
    Map<String, AutomationConfigValue> config, {
    bool path = false,
  }) {
    final args = <String>['config', 'set-all', '--stack', name];
    if (path) {
      args.add('--path');
    }

    for (final entry in config.entries) {
      args.add(entry.value.secret ? '--secret' : '--plaintext');
      args.add('${entry.key}=${entry.value.value}');
    }

    return workspace.runPulumiCommand(args);
  }

  /// Sets all config values from a JSON string for this stack.
  Future<PulumiCommandResult> setAllConfigJson(String configJson) {
    return workspace.runPulumiCommand(<String>[
      'config',
      'set-all',
      '--stack',
      name,
      '--json',
      configJson,
    ]);
  }

  /// Removes a config value from this stack.
  Future<PulumiCommandResult> removeConfig(String key, {bool path = false}) {
    final args = <String>['config', 'rm'];
    if (path) {
      args.add('--path');
    }
    args.addAll(<String>[key, '--stack', name]);
    return workspace.runPulumiCommand(args);
  }

  /// Refreshes stack config from backend and returns the resulting config map.
  Future<Map<String, AutomationConfigValue>> refreshConfig() async {
    await workspace.runPulumiCommand(<String>[
      'config',
      'refresh',
      '--force',
      '--stack',
      name,
    ]);
    return getAllConfig();
  }

  /// Returns a stack tag value by key.
  Future<String> getTag(String key) async {
    final result = await workspace.runPulumiCommand(<String>[
      'stack',
      'tag',
      'get',
      key,
      '--stack',
      name,
    ]);
    return result.stdout.trim();
  }

  /// Sets a stack tag key-value pair.
  Future<PulumiCommandResult> setTag(String key, String value) {
    return workspace.runPulumiCommand(<String>[
      'stack',
      'tag',
      'set',
      key,
      value,
      '--stack',
      name,
    ]);
  }

  /// Removes a stack tag by key.
  Future<PulumiCommandResult> removeTag(String key) {
    return workspace.runPulumiCommand(<String>[
      'stack',
      'tag',
      'rm',
      key,
      '--stack',
      name,
    ]);
  }

  /// Lists all tags for this stack.
  Future<Map<String, String>> listTags() async {
    final result = await workspace.runPulumiCommand(<String>[
      'stack',
      'tag',
      'ls',
      '--json',
      '--stack',
      name,
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

  /// Removes multiple config values from this stack.
  Future<PulumiCommandResult> removeAllConfig(
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
    args.addAll(<String>[...filteredKeys, '--stack', name]);
    return workspace.runPulumiCommand(args);
  }

  /// Adds one or more ESC environments to this stack.
  Future<PulumiCommandResult> addEnvironments(
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

    final args = <String>['config', 'env', 'add', ...names, '--stack', name];
    if (yes) {
      args.add('--yes');
    }
    return workspace.runPulumiCommand(args);
  }

  /// Lists ESC environments imported by this stack.
  Future<List<String>> listEnvironments() async {
    final result = await workspace.runPulumiCommand(<String>[
      'config',
      'env',
      'ls',
      '--stack',
      name,
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

  /// Removes an ESC environment from this stack.
  Future<PulumiCommandResult> removeEnvironment(
    String environment, {
    bool yes = true,
  }) {
    final args = <String>['config', 'env', 'rm', environment, '--stack', name];
    if (yes) {
      args.add('--yes');
    }
    return workspace.runPulumiCommand(args);
  }

  /// Reads a single config value from this stack.
  Future<AutomationConfigValue> getConfig(
    String key, {
    bool path = false,
  }) async {
    final args = <String>['config', 'get'];
    if (path) {
      args.add('--path');
    }
    args.addAll(<String>[key, '--json', '--stack', name]);

    final result = await workspace.runPulumiCommand(args);
    return _decodeConfigValue(result.stdout);
  }

  /// Reads all config values for this stack.
  Future<Map<String, AutomationConfigValue>> getAllConfig() async {
    final result = await workspace.runPulumiCommand(<String>[
      'config',
      '--show-secrets',
      '--json',
      '--stack',
      name,
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

  /// Runs `pulumi preview` for this stack.
  Future<PulumiCommandResult> preview({
    bool nonInteractive = true,
    bool check = true,
    List<String> extraArgs = const <String>[],
  }) {
    final args = <String>['preview', '--stack', name];
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);
    return workspace.runPulumiCommand(args, check: check);
  }

  /// Runs `pulumi up` for this stack.
  Future<PulumiCommandResult> up({
    bool yes = true,
    bool skipPreview = true,
    bool nonInteractive = true,
    bool check = true,
    List<String> extraArgs = const <String>[],
  }) {
    final args = <String>['up', '--stack', name];
    if (yes) {
      args.add('--yes');
    }
    if (skipPreview) {
      args.add('--skip-preview');
    }
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);
    return workspace.runPulumiCommand(args, check: check);
  }

  /// Runs `pulumi refresh` for this stack.
  Future<PulumiCommandResult> refresh({
    bool yes = true,
    bool nonInteractive = true,
    bool check = true,
    List<String> extraArgs = const <String>[],
  }) {
    final args = <String>['refresh', '--stack', name];
    if (yes) {
      args.add('--yes');
    }
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);
    return workspace.runPulumiCommand(args, check: check);
  }

  /// Runs `pulumi destroy` for this stack.
  Future<PulumiCommandResult> destroy({
    bool yes = true,
    bool skipPreview = true,
    bool nonInteractive = true,
    bool check = true,
    List<String> extraArgs = const <String>[],
  }) {
    final args = <String>['destroy', '--stack', name];
    if (yes) {
      args.add('--yes');
    }
    if (skipPreview) {
      args.add('--skip-preview');
    }
    if (nonInteractive) {
      args.add('--non-interactive');
    }
    args.addAll(extraArgs);
    return workspace.runPulumiCommand(args, check: check);
  }

  /// Returns stack outputs from the last successful update.
  Future<Map<String, dynamic>> outputs({bool showSecrets = false}) async {
    final args = <String>['stack', 'output', '--json', '--stack', name];
    if (showSecrets) {
      args.add('--show-secrets');
    }
    final result = await workspace.runPulumiCommand(args);
    final decoded = jsonDecode(result.stdout);
    if (decoded is! Map) {
      throw FormatException(
        'Expected object JSON from `pulumi stack output --json`',
      );
    }
    return decoded.map((key, value) => MapEntry('$key', value));
  }

  /// Exports deployment state for this stack.
  Future<Map<String, dynamic>> exportStack({bool showSecrets = true}) {
    return workspace.exportStack(name, showSecrets: showSecrets);
  }

  /// Imports deployment state into this stack.
  Future<void> importStack(Map<String, dynamic> state) {
    return workspace.importStack(name, state);
  }

  /// Returns stack update history.
  Future<List<Map<String, dynamic>>> history({
    int? pageSize,
    int? page,
    bool showSecrets = false,
  }) async {
    final args = <String>['stack', 'history', '--json', '--stack', name];
    if (pageSize != null) {
      args.addAll(<String>['--page-size', '$pageSize']);
    }
    if (page != null) {
      args.addAll(<String>['--page', '$page']);
    }
    if (showSecrets) {
      args.add('--show-secrets');
    }

    final result = await workspace.runPulumiCommand(args);
    final decoded = jsonDecode(result.stdout);
    if (decoded is! List) {
      throw FormatException(
        'Expected array JSON from `pulumi stack history --json`',
      );
    }

    return decoded
        .whereType<Map>()
        .map((entry) => entry.map((key, value) => MapEntry('$key', value)))
        .toList(growable: false);
  }

  /// Returns the most recent stack update summary if one exists.
  Future<Map<String, dynamic>?> info({bool showSecrets = false}) async {
    final entries = await history(pageSize: 1, showSecrets: showSecrets);
    return entries.isEmpty ? null : entries.first;
  }

  /// Cancels the currently running update for this stack.
  Future<PulumiCommandResult> cancel({bool yes = true}) {
    final args = <String>['cancel', '--stack', name];
    if (yes) {
      args.add('--yes');
    }
    return workspace.runPulumiCommand(args);
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
