import 'command.dart';
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
    bool secret = false,
  }) async {
    final args = <String>['config', 'set', key, value, '--stack', name];
    if (secret) {
      args.add('--secret');
    }
    return workspace.runPulumiCommand(args);
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
}
