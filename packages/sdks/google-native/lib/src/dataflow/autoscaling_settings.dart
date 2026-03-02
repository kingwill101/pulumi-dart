// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_settings_algorithm.dart';

/// Settings for WorkerPool autoscaling.
class AutoscalingSettings {
  /// The algorithm to use for autoscaling.
  final pulumi.Input<AutoscalingSettingsAlgorithm>? algorithm;
  /// The maximum number of workers to cap scaling at.
  final pulumi.Input<int>? maxNumWorkers;

  /// Creates a new [AutoscalingSettings].
  /// [algorithm] The algorithm to use for autoscaling.
  /// [maxNumWorkers] The maximum number of workers to cap scaling at.
  AutoscalingSettings({
    this.algorithm,
    this.maxNumWorkers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?pulumi.Input.mapOptionalInputValue<AutoscalingSettingsAlgorithm, String>(algorithm, (value) => value.value),
      'maxNumWorkers': ?maxNumWorkers,
    };
  }

  factory AutoscalingSettings.fromMap(Map<String, dynamic> map) {
    return AutoscalingSettings(
      algorithm: map['algorithm'] == null ? null : (AutoscalingSettingsAlgorithm.fromValue(map['algorithm'] as String)).input(),
      maxNumWorkers: map['maxNumWorkers'] == null ? null : (map['maxNumWorkers'] as int).input(),
    );
  }
}

