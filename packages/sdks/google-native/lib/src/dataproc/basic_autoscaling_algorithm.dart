// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_yarn_autoscaling_config.dart';
import 'spark_standalone_autoscaling_config.dart';

/// Basic algorithm for autoscaling.
class BasicAutoscalingAlgorithm {
  /// Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  final pulumi.Input<String>? cooldownPeriod;
  /// Optional. Spark Standalone autoscaling configuration
  final pulumi.Input<SparkStandaloneAutoscalingConfig>? sparkStandaloneConfig;
  /// Optional. YARN autoscaling configuration.
  final pulumi.Input<BasicYarnAutoscalingConfig>? yarnConfig;

  /// Creates a new [BasicAutoscalingAlgorithm].
  /// [cooldownPeriod] Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  /// [sparkStandaloneConfig] Optional. Spark Standalone autoscaling configuration
  /// [yarnConfig] Optional. YARN autoscaling configuration.
  BasicAutoscalingAlgorithm({
    this.cooldownPeriod,
    this.sparkStandaloneConfig,
    this.yarnConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownPeriod': ?cooldownPeriod,
      'sparkStandaloneConfig': ?pulumi.Input.mapOptionalInputValue<SparkStandaloneAutoscalingConfig, Map<String, dynamic>>(sparkStandaloneConfig, (value) => value.toMap()),
      'yarnConfig': ?pulumi.Input.mapOptionalInputValue<BasicYarnAutoscalingConfig, Map<String, dynamic>>(yarnConfig, (value) => value.toMap()),
    };
  }

  factory BasicAutoscalingAlgorithm.fromMap(Map<String, dynamic> map) {
    return BasicAutoscalingAlgorithm(
      cooldownPeriod: (() { final guardedValue = map['cooldownPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkStandaloneConfig: (() { final guardedValue = map['sparkStandaloneConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkStandaloneAutoscalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yarnConfig: (() { final guardedValue = map['yarnConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicYarnAutoscalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

