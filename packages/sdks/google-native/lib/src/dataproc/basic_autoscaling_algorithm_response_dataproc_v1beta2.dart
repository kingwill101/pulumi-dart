// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_yarn_autoscaling_config_response_dataproc_v1beta2.dart';

/// Basic algorithm for autoscaling.
class BasicAutoscalingAlgorithmResponseDataprocV1beta2 {
  /// Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  final pulumi.Input<String> cooldownPeriod;
  /// Optional. YARN autoscaling configuration.
  final pulumi.Input<BasicYarnAutoscalingConfigResponseDataprocV1beta2> yarnConfig;

  /// Creates a new [BasicAutoscalingAlgorithmResponseDataprocV1beta2].
  /// [cooldownPeriod] Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  /// [yarnConfig] Optional. YARN autoscaling configuration.
  const BasicAutoscalingAlgorithmResponseDataprocV1beta2({
    required this.cooldownPeriod,
    required this.yarnConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownPeriod': cooldownPeriod,
      'yarnConfig': pulumi.Input.mapInputValue<BasicYarnAutoscalingConfigResponseDataprocV1beta2, Map<String, dynamic>>(yarnConfig, (value) => value.toMap()),
    };
  }

  factory BasicAutoscalingAlgorithmResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return BasicAutoscalingAlgorithmResponseDataprocV1beta2(
      cooldownPeriod: pulumi.Input.fromValue(map['cooldownPeriod'] as String),
      yarnConfig: pulumi.Input.fromValue(BasicYarnAutoscalingConfigResponseDataprocV1beta2.fromMap((map['yarnConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
