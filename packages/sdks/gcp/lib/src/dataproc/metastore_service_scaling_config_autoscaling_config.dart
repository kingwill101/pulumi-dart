// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_service_scaling_config_autoscaling_config_limit_config.dart';

class MetastoreServiceScalingConfigAutoscalingConfig {
  /// Defines whether autoscaling is enabled. The default value is false.
  final pulumi.Input<bool>? autoscalingEnabled;
  /// (Output)
  /// Output only. The scaling factor of a service with autoscaling enabled.
  final pulumi.Input<double>? autoscalingFactor;
  /// Represents the limit configuration of a metastore service.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceScalingConfigAutoscalingConfigLimitConfig>? limitConfig;

  /// Creates a new [MetastoreServiceScalingConfigAutoscalingConfig].
  /// [autoscalingEnabled] Defines whether autoscaling is enabled. The default value is false.
  /// [autoscalingFactor] (Output)
  /// [limitConfig] Represents the limit configuration of a metastore service.
  MetastoreServiceScalingConfigAutoscalingConfig({
    this.autoscalingEnabled,
    this.autoscalingFactor,
    this.limitConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingEnabled': ?autoscalingEnabled,
      'autoscalingFactor': ?autoscalingFactor,
      'limitConfig': ?pulumi.Input.mapOptionalInputValue<MetastoreServiceScalingConfigAutoscalingConfigLimitConfig, Map<String, dynamic>>(limitConfig, (value) => value.toMap()),
    };
  }

  factory MetastoreServiceScalingConfigAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceScalingConfigAutoscalingConfig(
      autoscalingEnabled: map['autoscalingEnabled'] == null ? null : (map['autoscalingEnabled']! as bool).input(),
      autoscalingFactor: map['autoscalingFactor'] == null ? null : (map['autoscalingFactor']! as double).input(),
      limitConfig: map['limitConfig'] == null ? null : (MetastoreServiceScalingConfigAutoscalingConfigLimitConfig.fromMap((map['limitConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

