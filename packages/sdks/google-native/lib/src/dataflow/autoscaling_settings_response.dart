// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for WorkerPool autoscaling.
class AutoscalingSettingsResponse {
  /// The algorithm to use for autoscaling.
  final pulumi.Input<String> algorithm;
  /// The maximum number of workers to cap scaling at.
  final pulumi.Input<int> maxNumWorkers;

  /// Creates a new [AutoscalingSettingsResponse].
  /// [algorithm] The algorithm to use for autoscaling.
  /// [maxNumWorkers] The maximum number of workers to cap scaling at.
  const AutoscalingSettingsResponse({
    required this.algorithm,
    required this.maxNumWorkers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'maxNumWorkers': maxNumWorkers,
    };
  }

  factory AutoscalingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AutoscalingSettingsResponse(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      maxNumWorkers: pulumi.Input.fromValue(map['maxNumWorkers'] as int),
    );
  }
}

