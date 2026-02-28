import 'dart:convert';

import 'command.dart';
import 'config.dart';
import 'local_workspace.dart';

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
  }) {
    return workspace.setConfig(name, key, value, path: path, secret: secret);
  }

  /// Sets multiple config values on this stack in one command.
  Future<PulumiCommandResult> setAllConfig(
    Map<String, AutomationConfigValue> config, {
    bool path = false,
  }) {
    return workspace.setAllConfig(name, config, path: path);
  }

  /// Sets all config values from a JSON string for this stack.
  Future<PulumiCommandResult> setAllConfigJson(String configJson) {
    return workspace.setAllConfigJson(name, configJson);
  }

  /// Removes a config value from this stack.
  Future<PulumiCommandResult> removeConfig(String key, {bool path = false}) {
    return workspace.removeConfig(name, key, path: path);
  }

  /// Refreshes stack config from backend and returns the resulting config map.
  Future<Map<String, AutomationConfigValue>> refreshConfig() {
    return workspace.refreshConfig(name);
  }

  /// Returns a stack tag value by key.
  Future<String> getTag(String key) {
    return workspace.getTag(name, key);
  }

  /// Sets a stack tag key-value pair.
  Future<PulumiCommandResult> setTag(String key, String value) {
    return workspace.setTag(name, key, value);
  }

  /// Removes a stack tag by key.
  Future<PulumiCommandResult> removeTag(String key) {
    return workspace.removeTag(name, key);
  }

  /// Lists all tags for this stack.
  Future<Map<String, String>> listTags() {
    return workspace.listTags(name);
  }

  /// Removes multiple config values from this stack.
  Future<PulumiCommandResult> removeAllConfig(
    Iterable<String> keys, {
    bool path = false,
  }) {
    return workspace.removeAllConfig(name, keys, path: path);
  }

  /// Adds one or more ESC environments to this stack.
  Future<PulumiCommandResult> addEnvironments(
    Iterable<String> environments, {
    bool yes = true,
  }) {
    return workspace.addEnvironments(name, environments, yes: yes);
  }

  /// Lists ESC environments imported by this stack.
  Future<List<String>> listEnvironments() {
    return workspace.listEnvironments(name);
  }

  /// Removes an ESC environment from this stack.
  Future<PulumiCommandResult> removeEnvironment(
    String environment, {
    bool yes = true,
  }) {
    return workspace.removeEnvironment(name, environment, yes: yes);
  }

  /// Reads a single config value from this stack.
  Future<AutomationConfigValue> getConfig(String key, {bool path = false}) {
    return workspace.getConfig(name, key, path: path);
  }

  /// Reads all config values for this stack.
  Future<Map<String, AutomationConfigValue>> getAllConfig() {
    return workspace.getAllConfig(name);
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
  Future<Map<String, dynamic>> outputs({bool showSecrets = false}) {
    return workspace.stackOutputs(name, showSecrets: showSecrets);
  }

  /// Returns stack outputs with secret metadata.
  Future<Map<String, AutomationOutputValue>> outputsWithMetadata() {
    return workspace.stackOutputsWithMetadata(name);
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
}
