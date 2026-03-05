// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_yarn_autoscaling_config_response.dart';
import 'spark_standalone_autoscaling_config_response.dart';

/// Basic algorithm for autoscaling.
class BasicAutoscalingAlgorithmResponse {
  /// Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  final pulumi.Input<String> cooldownPeriod;
  /// Optional. Spark Standalone autoscaling configuration
  final pulumi.Input<SparkStandaloneAutoscalingConfigResponse> sparkStandaloneConfig;
  /// Optional. YARN autoscaling configuration.
  final pulumi.Input<BasicYarnAutoscalingConfigResponse> yarnConfig;

  /// Creates a new [BasicAutoscalingAlgorithmResponse].
  /// [cooldownPeriod] Optional. Duration between scaling events. A scaling period starts after the update operation from the previous event has completed.Bounds: 2m, 1d. Default: 2m.
  /// [sparkStandaloneConfig] Optional. Spark Standalone autoscaling configuration
  /// [yarnConfig] Optional. YARN autoscaling configuration.
  BasicAutoscalingAlgorithmResponse({
    required this.cooldownPeriod,
    required this.sparkStandaloneConfig,
    required this.yarnConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownPeriod': cooldownPeriod,
      'sparkStandaloneConfig': pulumi.Input.mapInputValue<SparkStandaloneAutoscalingConfigResponse, Map<String, dynamic>>(sparkStandaloneConfig, (value) => value.toMap()),
      'yarnConfig': pulumi.Input.mapInputValue<BasicYarnAutoscalingConfigResponse, Map<String, dynamic>>(yarnConfig, (value) => value.toMap()),
    };
  }

  factory BasicAutoscalingAlgorithmResponse.fromMap(Map<String, dynamic> map) {
    return BasicAutoscalingAlgorithmResponse(
      cooldownPeriod: pulumi.Input.fromValue(map['cooldownPeriod'] as String),
      sparkStandaloneConfig: pulumi.Input.fromValue(SparkStandaloneAutoscalingConfigResponse.fromMap((map['sparkStandaloneConfig']! as Map).cast<String, dynamic>())),
      yarnConfig: pulumi.Input.fromValue(BasicYarnAutoscalingConfigResponse.fromMap((map['yarnConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

