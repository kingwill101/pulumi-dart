import 'command.dart';
import 'config.dart';
import 'events.dart';

/// Map of operation type to resource change count.
typedef AutomationOpMap = Map<String, int>;

/// The kind of update operation represented by an [AutomationUpdateSummary].
enum AutomationUpdateKind {
  update,
  preview,
  refresh,
  rename,
  destroy,
  importOperation,
}

/// The result state represented by an [AutomationUpdateSummary].
enum AutomationUpdateResult { notStarted, inProgress, succeeded, failed }

/// Granular resource operation types used in summary change maps.
enum AutomationOpType {
  same,
  create,
  update,
  delete,
  replace,
  createReplacement,
  deleteReplaced,
  read,
  readReplacement,
  refresh,
  discard,
  discardReplaced,
  removePendingReplace,
  importOperation,
  importReplacement,
}

extension AutomationUpdateKindParsing on AutomationUpdateKind {
  static AutomationUpdateKind? tryParse(String? value) {
    switch (value) {
      case 'update':
        return AutomationUpdateKind.update;
      case 'preview':
        return AutomationUpdateKind.preview;
      case 'refresh':
        return AutomationUpdateKind.refresh;
      case 'rename':
        return AutomationUpdateKind.rename;
      case 'destroy':
        return AutomationUpdateKind.destroy;
      case 'import':
        return AutomationUpdateKind.importOperation;
      default:
        return null;
    }
  }
}

extension AutomationUpdateResultParsing on AutomationUpdateResult {
  static AutomationUpdateResult? tryParse(String? value) {
    switch (value) {
      case 'not-started':
        return AutomationUpdateResult.notStarted;
      case 'in-progress':
        return AutomationUpdateResult.inProgress;
      case 'succeeded':
        return AutomationUpdateResult.succeeded;
      case 'failed':
        return AutomationUpdateResult.failed;
      default:
        return null;
    }
  }
}

extension AutomationOpTypeParsing on AutomationOpType {
  static AutomationOpType? tryParse(String key) {
    switch (key) {
      case 'same':
        return AutomationOpType.same;
      case 'create':
        return AutomationOpType.create;
      case 'update':
        return AutomationOpType.update;
      case 'delete':
        return AutomationOpType.delete;
      case 'replace':
        return AutomationOpType.replace;
      case 'create-replacement':
        return AutomationOpType.createReplacement;
      case 'delete-replaced':
        return AutomationOpType.deleteReplaced;
      case 'read':
        return AutomationOpType.read;
      case 'read-replacement':
        return AutomationOpType.readReplacement;
      case 'refresh':
        return AutomationOpType.refresh;
      case 'discard':
        return AutomationOpType.discard;
      case 'discard-replaced':
        return AutomationOpType.discardReplaced;
      case 'remove-pending-replace':
        return AutomationOpType.removePendingReplace;
      case 'import':
        return AutomationOpType.importOperation;
      case 'import-replacement':
        return AutomationOpType.importReplacement;
      default:
        return null;
    }
  }
}

/// Typed summary metadata for a completed stack operation.
class AutomationUpdateSummary {
  const AutomationUpdateSummary({
    this.kind,
    this.startTime,
    this.endTime,
    this.message,
    this.environment = const <String, String>{},
    this.config = const <String, AutomationConfigValue>{},
    this.result,
    this.version,
    this.deployment,
    this.resourceChanges = const <String, int>{},
    this.raw = const <String, dynamic>{},
  });

  factory AutomationUpdateSummary.fromJson(Map<String, dynamic> json) {
    DateTime? parseDate(String key) {
      final value = json[key];
      if (value == null) {
        return null;
      }
      return DateTime.tryParse('$value');
    }

    final environment = <String, String>{};
    final rawEnvironment = json['environment'];
    if (rawEnvironment is Map) {
      for (final entry in rawEnvironment.entries) {
        environment['${entry.key}'] = '${entry.value}';
      }
    }

    final config = <String, AutomationConfigValue>{};
    final rawConfig = json['config'];
    if (rawConfig is Map) {
      for (final entry in rawConfig.entries) {
        final key = '${entry.key}';
        final value = entry.value;
        if (value is Map) {
          final secret = value['secret'] == true;
          final parsedValue = secret
              ? '${value['value'] ?? '[secret]'}'
              : '${value['value'] ?? ''}';
          config[key] = AutomationConfigValue(
            value: parsedValue,
            secret: secret,
          );
          continue;
        }
        config[key] = AutomationConfigValue(value: '$value', secret: false);
      }
    }

    final resourceChanges = <String, int>{};
    final rawResourceChanges = json['resourceChanges'];
    if (rawResourceChanges is Map) {
      for (final entry in rawResourceChanges.entries) {
        final value = entry.value;
        if (value is int) {
          resourceChanges['${entry.key}'] = value;
          continue;
        }
        if (value is num) {
          resourceChanges['${entry.key}'] = value.toInt();
          continue;
        }
        final parsed = int.tryParse('$value');
        if (parsed != null) {
          resourceChanges['${entry.key}'] = parsed;
        }
      }
    }

    int? version;
    final rawVersion = json['version'];
    if (rawVersion is int) {
      version = rawVersion;
    } else if (rawVersion is num) {
      version = rawVersion.toInt();
    } else if (rawVersion != null) {
      version = int.tryParse('$rawVersion');
    }

    return AutomationUpdateSummary(
      kind: json['kind'] == null ? null : '${json['kind']}',
      startTime: parseDate('startTime'),
      endTime: parseDate('endTime'),
      message: json['message'] == null ? null : '${json['message']}',
      environment: environment,
      config: config,
      result: json['result'] == null ? null : '${json['result']}',
      version: version,
      deployment: json['deployment'] ?? json['Deployment'],
      resourceChanges: resourceChanges,
      raw: json,
    );
  }

  final String? kind;
  final DateTime? startTime;
  final DateTime? endTime;
  final String? message;
  final Map<String, String> environment;
  final Map<String, AutomationConfigValue> config;
  final String? result;
  final int? version;
  final dynamic deployment;
  final AutomationOpMap resourceChanges;
  final Map<String, dynamic> raw;

  /// Parsed enum representation of [kind] when it matches known CLI values.
  AutomationUpdateKind? get parsedKind =>
      AutomationUpdateKindParsing.tryParse(kind);

  /// Parsed enum representation of [result] when it matches known CLI values.
  AutomationUpdateResult? get parsedResult =>
      AutomationUpdateResultParsing.tryParse(result);

  /// Parsed enum representation of [resourceChanges] for known operation keys.
  Map<AutomationOpType, int> get parsedResourceChanges {
    final result = <AutomationOpType, int>{};
    for (final entry in resourceChanges.entries) {
      final op = AutomationOpTypeParsing.tryParse(entry.key);
      if (op != null) {
        result[op] = entry.value;
      }
    }
    return result;
  }

  /// Aggregate count across all entries in [resourceChanges].
  int get totalResourceChanges =>
      resourceChanges.values.fold(0, (sum, count) => sum + count);

  /// Duration between [startTime] and [endTime] when both are present.
  Duration? get duration {
    if (startTime == null || endTime == null) {
      return null;
    }
    return endTime!.difference(startTime!);
  }

  /// True when the summary indicates a successful operation.
  bool? get isSuccessful {
    final parsed = parsedResult;
    if (parsed == null) {
      return null;
    }
    return parsed == AutomationUpdateResult.succeeded;
  }
}

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
    this.changeSummary = const <String, int>{},
    this.summaryEvent,
  });

  final AutomationOpMap changeSummary;
  final AutomationSummaryEvent? summaryEvent;
}

/// Result for `pulumi up`.
class AutomationUpResult extends AutomationOperationResult {
  const AutomationUpResult({
    required super.commandResult,
    super.events = const <AutomationEngineEvent>[],
    this.outputs,
    this.summary,
  });

  final Map<String, AutomationOutputValue>? outputs;
  final AutomationUpdateSummary? summary;
}

/// Result for `pulumi refresh`.
class AutomationRefreshResult extends AutomationOperationResult {
  const AutomationRefreshResult({
    required super.commandResult,
    super.events = const <AutomationEngineEvent>[],
    this.summary,
  });

  final AutomationUpdateSummary? summary;
}

/// Result for `pulumi destroy`.
class AutomationDestroyResult extends AutomationOperationResult {
  const AutomationDestroyResult({
    required super.commandResult,
    super.events = const <AutomationEngineEvent>[],
    this.summary,
  });

  final AutomationUpdateSummary? summary;
}

/// Result for `pulumi stack rename`.
class AutomationRenameResult extends AutomationOperationResult {
  const AutomationRenameResult({
    required super.commandResult,
    super.events = const <AutomationEngineEvent>[],
    this.summary,
  });

  final AutomationUpdateSummary? summary;
}

/// Result for `pulumi import`.
class AutomationImportResult extends AutomationOperationResult {
  const AutomationImportResult({
    required super.commandResult,
    super.events = const <AutomationEngineEvent>[],
    this.generatedCode = '',
    this.summary,
  });

  final String generatedCode;
  final AutomationUpdateSummary? summary;
}
