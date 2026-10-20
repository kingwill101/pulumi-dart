// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersScriptsResultObservabilityIssues {
  /// Whether real-time Issues are enabled for the Worker.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetWorkersScriptsResultObservabilityIssues].
  /// [enabled] Whether real-time Issues are enabled for the Worker.
  const GetWorkersScriptsResultObservabilityIssues({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetWorkersScriptsResultObservabilityIssues.fromMap(Map<String, dynamic> map) {
    return GetWorkersScriptsResultObservabilityIssues(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
