import 'command.dart';
import 'config.dart';
import 'events.dart';

/// Base result for a Pulumi stack operation.
class AutomationOperationResult {
  const AutomationOperationResult({
    required this.commandResult,
    this.events = const <AutomationEngineEvent>[],
  });

  final PulumiCommandResult commandResult;
  final List<AutomationEngineEvent> events;

  int get exitCode => commandResult.exitCode;
  String get stdout => commandResult.stdout;
  String get stderr => commandResult.stderr;
  bool get succeeded => commandResult.succeeded;
}

/// Result for `pulumi preview`.
class AutomationPreviewResult extends AutomationOperationResult {
  const AutomationPreviewResult({
    required super.commandResult,
    super.events = const <AutomationEngineEvent>[],
  });
}

/// Result for `pulumi up`.
class AutomationUpResult extends AutomationOperationResult {
  const AutomationUpResult({
    required super.commandResult,
    super.events = const <AutomationEngineEvent>[],
    this.outputs,
  });

  final Map<String, AutomationOutputValue>? outputs;
}

/// Result for `pulumi refresh`.
class AutomationRefreshResult extends AutomationOperationResult {
  const AutomationRefreshResult({
    required super.commandResult,
    super.events = const <AutomationEngineEvent>[],
  });
}

/// Result for `pulumi destroy`.
class AutomationDestroyResult extends AutomationOperationResult {
  const AutomationDestroyResult({
    required super.commandResult,
    super.events = const <AutomationEngineEvent>[],
  });
}
