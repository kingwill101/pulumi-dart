/// Kind of difference between old/new values in update events.
enum DiffKind {
  add('add'),
  addReplace('add-replace'),
  delete('delete'),
  deleteReplace('delete-replace'),
  update('update'),
  updateReplace('update-replace');

  const DiffKind(this.value);

  final String value;

  static DiffKind? tryParse(String raw) {
    for (final kind in DiffKind.values) {
      if (kind.value == raw) {
        return kind;
      }
    }
    return null;
  }
}

/// Per-property diff metadata from engine events.
class PropertyDiff {
  const PropertyDiff({required this.diffKind, required this.inputDiff});

  final DiffKind diffKind;
  final bool inputDiff;

  factory PropertyDiff.fromJson(Map<String, dynamic> json) {
    final parsed =
        DiffKind.tryParse('${json['diffKind'] ?? ''}') ?? DiffKind.update;
    return PropertyDiff(diffKind: parsed, inputDiff: json['inputDiff'] == true);
  }
}

/// Step metadata emitted by Pulumi engine events.
class StepEventMetadata {
  const StepEventMetadata({this.op, this.detailedDiff});

  final String? op;
  final Map<String, PropertyDiff>? detailedDiff;

  factory StepEventMetadata.fromJson(Map<String, dynamic> json) {
    Map<String, PropertyDiff>? parsedDiff;
    final detailed = json['detailedDiff'];
    if (detailed is Map) {
      parsedDiff = <String, PropertyDiff>{};
      for (final entry in detailed.entries) {
        final value = entry.value;
        if (value is Map<String, dynamic>) {
          parsedDiff['${entry.key}'] = PropertyDiff.fromJson(value);
          continue;
        }
        if (value is Map) {
          parsedDiff['${entry.key}'] = PropertyDiff.fromJson(
            value.map((key, value) => MapEntry('$key', value)),
          );
        }
      }
    }

    return StepEventMetadata(
      op: json['op'] == null ? null : '${json['op']}',
      detailedDiff: parsedDiff,
    );
  }
}

/// Policy pack event metadata.
class PolicyEvent {
  const PolicyEvent({this.resourceUrn});

  final String? resourceUrn;

  factory PolicyEvent.fromJson(Map<String, dynamic> json) {
    return PolicyEvent(
      resourceUrn: json['resourceUrn'] == null
          ? null
          : '${json['resourceUrn']}',
    );
  }
}

/// Pulumi engine event emitted through `--event-log`.
class AutomationEngineEvent {
  const AutomationEngineEvent({required this.raw});

  factory AutomationEngineEvent.fromJson(Map<String, dynamic> json) {
    return AutomationEngineEvent(raw: Map<String, dynamic>.from(json));
  }

  /// Original event payload.
  final Map<String, dynamic> raw;

  /// Event sequence number if available.
  int? get sequence {
    final value = raw['sequence'];
    if (value is int) {
      return value;
    }
    if (value is num) {
      return value.toInt();
    }
    return int.tryParse('${raw['sequence'] ?? ''}');
  }

  /// Event timestamp if available.
  String? get timestamp {
    final value = raw['timestamp'];
    if (value == null) {
      return null;
    }
    return '$value';
  }

  /// Best-effort event kind derived from the event payload keys.
  String get kind {
    for (final key in raw.keys) {
      if (key.endsWith('Event')) {
        return key;
      }
    }
    return 'unknown';
  }
}
