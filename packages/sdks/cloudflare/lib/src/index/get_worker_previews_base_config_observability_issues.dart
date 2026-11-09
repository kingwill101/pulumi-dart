// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPreviewsBaseConfigObservabilityIssues {
  /// Whether real-time Issues are enabled for the Worker.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetWorkerPreviewsBaseConfigObservabilityIssues].
  /// [enabled] Whether real-time Issues are enabled for the Worker.
  const GetWorkerPreviewsBaseConfigObservabilityIssues({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetWorkerPreviewsBaseConfigObservabilityIssues.fromMap(Map<String, dynamic> map) {
    return GetWorkerPreviewsBaseConfigObservabilityIssues(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
