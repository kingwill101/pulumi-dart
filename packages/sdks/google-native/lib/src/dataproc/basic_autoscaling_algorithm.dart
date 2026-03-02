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
      cooldownPeriod: map['cooldownPeriod'] == null ? null : (map['cooldownPeriod']! as String).input(),
      sparkStandaloneConfig: map['sparkStandaloneConfig'] == null ? null : (SparkStandaloneAutoscalingConfig.fromMap((map['sparkStandaloneConfig']! as Map).cast<String, dynamic>())).input(),
      yarnConfig: map['yarnConfig'] == null ? null : (BasicYarnAutoscalingConfig.fromMap((map['yarnConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

