// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersScriptAnnotations {
  /// Human-readable message about the version. Truncated to 1000 bytes if longer.
  final pulumi.Input<String?>? workersMessage;
  /// User-provided identifier for the version. Maximum 100 bytes.
  final pulumi.Input<String?>? workersTag;
  /// Indicates the trigger that created this version. Server-set value.
  final pulumi.Input<String?>? workersTriggeredBy;

  /// Creates a new [WorkersScriptAnnotations].
  /// [workersMessage] Human-readable message about the version. Truncated to 1000 bytes if longer.
  /// [workersTag] User-provided identifier for the version. Maximum 100 bytes.
  /// [workersTriggeredBy] Indicates the trigger that created this version. Server-set value.
  const WorkersScriptAnnotations({
    this.workersMessage,
    this.workersTag,
    this.workersTriggeredBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workersMessage': ?workersMessage,
      'workersTag': ?workersTag,
      'workersTriggeredBy': ?workersTriggeredBy,
    };
  }

  factory WorkersScriptAnnotations.fromMap(Map<String, dynamic> map) {
    return WorkersScriptAnnotations(
      workersMessage: (() { final guardedValue = map['workersMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workersTag: (() { final guardedValue = map['workersTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workersTriggeredBy: (() { final guardedValue = map['workersTriggeredBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
