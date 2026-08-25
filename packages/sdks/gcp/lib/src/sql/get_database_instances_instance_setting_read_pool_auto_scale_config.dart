// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instances_instance_setting_read_pool_auto_scale_config_target_metric.dart';

class GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig {
  /// True if auto scale in is disabled.
  final pulumi.Input<bool> disableScaleIn;
  /// True if Read Pool Auto Scale is enabled.
  final pulumi.Input<bool> enabled;
  /// Maximum number of nodes in the read pool. If set to lower than current node count, node count will be updated.
  final pulumi.Input<int> maxNodeCount;
  /// Minimum number of nodes in the read pool. If set to higher than current node count, node count will be updated.
  final pulumi.Input<int> minNodeCount;
  /// The cooldown period for scale in operations.
  final pulumi.Input<int> scaleInCooldownSeconds;
  /// The cooldown period for scale out operations.
  final pulumi.Input<int> scaleOutCooldownSeconds;
  /// Target metrics for Read Pool Auto Scale.
  final pulumi.Input<List<GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric>> targetMetrics;

  /// Creates a new [GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig].
  /// [disableScaleIn] True if auto scale in is disabled.
  /// [enabled] True if Read Pool Auto Scale is enabled.
  /// [maxNodeCount] Maximum number of nodes in the read pool. If set to lower than current node count, node count will be updated.
  /// [minNodeCount] Minimum number of nodes in the read pool. If set to higher than current node count, node count will be updated.
  /// [scaleInCooldownSeconds] The cooldown period for scale in operations.
  /// [scaleOutCooldownSeconds] The cooldown period for scale out operations.
  /// [targetMetrics] Target metrics for Read Pool Auto Scale.
  const GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig({
    required this.disableScaleIn,
    required this.enabled,
    required this.maxNodeCount,
    required this.minNodeCount,
    required this.scaleInCooldownSeconds,
    required this.scaleOutCooldownSeconds,
    required this.targetMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableScaleIn': disableScaleIn,
      'enabled': enabled,
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
      'scaleInCooldownSeconds': scaleInCooldownSeconds,
      'scaleOutCooldownSeconds': scaleOutCooldownSeconds,
      'targetMetrics': pulumi.Input.mapInputValue<List<GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric>, List<Map<String, dynamic>>>(targetMetrics, (value) => pulumi.Input.encodeList<GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfig(
      disableScaleIn: pulumi.Input.fromValue(map['disableScaleIn'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      maxNodeCount: pulumi.Input.fromValue((map['maxNodeCount'] as num).toInt()),
      minNodeCount: pulumi.Input.fromValue((map['minNodeCount'] as num).toInt()),
      scaleInCooldownSeconds: pulumi.Input.fromValue((map['scaleInCooldownSeconds'] as num).toInt()),
      scaleOutCooldownSeconds: pulumi.Input.fromValue((map['scaleOutCooldownSeconds'] as num).toInt()),
      targetMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric>(map['targetMetrics']!, (value) => GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
