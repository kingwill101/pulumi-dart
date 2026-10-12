// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersResultObservabilityIssues {
  /// Whether real-time Issues are enabled for the Worker.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetWorkersResultObservabilityIssues].
  /// [enabled] Whether real-time Issues are enabled for the Worker.
  const GetWorkersResultObservabilityIssues({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetWorkersResultObservabilityIssues.fromMap(Map<String, dynamic> map) {
    return GetWorkersResultObservabilityIssues(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
