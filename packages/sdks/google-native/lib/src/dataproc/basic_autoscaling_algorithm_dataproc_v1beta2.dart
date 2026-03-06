// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_yarn_autoscaling_config_dataproc_v1beta2.dart';

/// Basic algorithm for autoscaling.
class BasicAutoscalingAlgorithmDataprocV1beta2 {
  /// Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  final pulumi.Input<String>? cooldownPeriod;
  /// Optional. YARN autoscaling configuration.
  final pulumi.Input<BasicYarnAutoscalingConfigDataprocV1beta2>? yarnConfig;

  /// Creates a new [BasicAutoscalingAlgorithmDataprocV1beta2].
  /// [cooldownPeriod] Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  /// [yarnConfig] Optional. YARN autoscaling configuration.
  const BasicAutoscalingAlgorithmDataprocV1beta2({
    this.cooldownPeriod,
    this.yarnConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownPeriod': ?cooldownPeriod,
      'yarnConfig': ?pulumi.Input.mapOptionalInputValue<BasicYarnAutoscalingConfigDataprocV1beta2, Map<String, dynamic>>(yarnConfig, (value) => value.toMap()),
    };
  }

  factory BasicAutoscalingAlgorithmDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return BasicAutoscalingAlgorithmDataprocV1beta2(
      cooldownPeriod: (() { final guardedValue = map['cooldownPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      yarnConfig: (() { final guardedValue = map['yarnConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicYarnAutoscalingConfigDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

