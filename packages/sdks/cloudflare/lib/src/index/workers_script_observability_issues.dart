// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersScriptObservabilityIssues {
  /// Whether real-time Issues are enabled for the Worker.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [WorkersScriptObservabilityIssues].
  /// [enabled] Whether real-time Issues are enabled for the Worker.
  const WorkersScriptObservabilityIssues({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory WorkersScriptObservabilityIssues.fromMap(Map<String, dynamic> map) {
    return WorkersScriptObservabilityIssues(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
