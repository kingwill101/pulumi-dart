// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPreviewsBaseConfigObservabilityIssues {
  /// Whether real-time Issues are enabled for the Worker.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [WorkerPreviewsBaseConfigObservabilityIssues].
  /// [enabled] Whether real-time Issues are enabled for the Worker.
  const WorkerPreviewsBaseConfigObservabilityIssues({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory WorkerPreviewsBaseConfigObservabilityIssues.fromMap(Map<String, dynamic> map) {
    return WorkerPreviewsBaseConfigObservabilityIssues(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
