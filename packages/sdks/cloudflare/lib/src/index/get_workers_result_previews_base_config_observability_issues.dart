// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersResultPreviewsBaseConfigObservabilityIssues {
  /// Whether real-time Issues are enabled for the Worker.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetWorkersResultPreviewsBaseConfigObservabilityIssues].
  /// [enabled] Whether real-time Issues are enabled for the Worker.
  const GetWorkersResultPreviewsBaseConfigObservabilityIssues({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetWorkersResultPreviewsBaseConfigObservabilityIssues.fromMap(Map<String, dynamic> map) {
    return GetWorkersResultPreviewsBaseConfigObservabilityIssues(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
