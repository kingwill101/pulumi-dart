// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerObservabilityIssues {
  /// Whether real-time Issues are enabled for the Worker.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetWorkerObservabilityIssues].
  /// [enabled] Whether real-time Issues are enabled for the Worker.
  const GetWorkerObservabilityIssues({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetWorkerObservabilityIssues.fromMap(Map<String, dynamic> map) {
    return GetWorkerObservabilityIssues(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
