// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerScriptObservabilityIssues {
  /// Whether real-time Issues are enabled for the Worker.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [WorkerScriptObservabilityIssues].
  /// [enabled] Whether real-time Issues are enabled for the Worker.
  const WorkerScriptObservabilityIssues({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory WorkerScriptObservabilityIssues.fromMap(Map<String, dynamic> map) {
    return WorkerScriptObservabilityIssues(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
