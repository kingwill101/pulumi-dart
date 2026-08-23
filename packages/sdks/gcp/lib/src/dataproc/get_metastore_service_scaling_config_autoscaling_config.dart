// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metastore_service_scaling_config_autoscaling_config_limit_config.dart';

class GetMetastoreServiceScalingConfigAutoscalingConfig {
  /// Defines whether autoscaling is enabled. The default value is false.
  final pulumi.Input<bool> autoscalingEnabled;
  /// Output only. The scaling factor of a service with autoscaling enabled.
  final pulumi.Input<double> autoscalingFactor;
  /// Represents the limit configuration of a metastore service.
  final pulumi.Input<List<GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig>> limitConfigs;

  /// Creates a new [GetMetastoreServiceScalingConfigAutoscalingConfig].
  /// [autoscalingEnabled] Defines whether autoscaling is enabled. The default value is false.
  /// [autoscalingFactor] Output only. The scaling factor of a service with autoscaling enabled.
  /// [limitConfigs] Represents the limit configuration of a metastore service.
  const GetMetastoreServiceScalingConfigAutoscalingConfig({
    required this.autoscalingEnabled,
    required this.autoscalingFactor,
    required this.limitConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingEnabled': autoscalingEnabled,
      'autoscalingFactor': autoscalingFactor,
      'limitConfigs': pulumi.Input.mapInputValue<List<GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig>, List<Map<String, dynamic>>>(limitConfigs, (value) => pulumi.Input.encodeList<GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetMetastoreServiceScalingConfigAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceScalingConfigAutoscalingConfig(
      autoscalingEnabled: pulumi.Input.fromValue(map['autoscalingEnabled'] as bool),
      autoscalingFactor: pulumi.Input.fromValue(map['autoscalingFactor'] as double),
      limitConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig>(map['limitConfigs']!, (value) => GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
