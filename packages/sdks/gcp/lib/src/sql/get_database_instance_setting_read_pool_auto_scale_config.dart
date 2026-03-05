// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_instance_setting_read_pool_auto_scale_config_target_metric.dart';

class GetDatabaseInstanceSettingReadPoolAutoScaleConfig {
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
  final pulumi.Input<List<GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric>> targetMetrics;

  /// Creates a new [GetDatabaseInstanceSettingReadPoolAutoScaleConfig].
  /// [disableScaleIn] True if auto scale in is disabled.
  /// [enabled] True if Read Pool Auto Scale is enabled.
  /// [maxNodeCount] Maximum number of nodes in the read pool. If set to lower than current node count, node count will be updated.
  /// [minNodeCount] Minimum number of nodes in the read pool. If set to higher than current node count, node count will be updated.
  /// [scaleInCooldownSeconds] The cooldown period for scale in operations.
  /// [scaleOutCooldownSeconds] The cooldown period for scale out operations.
  /// [targetMetrics] Target metrics for Read Pool Auto Scale.
  GetDatabaseInstanceSettingReadPoolAutoScaleConfig({
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
      'targetMetrics': pulumi.Input.mapInputValue<List<GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric>, List<Map<String, dynamic>>>(targetMetrics, (value) => pulumi.Input.encodeList<GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDatabaseInstanceSettingReadPoolAutoScaleConfig.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingReadPoolAutoScaleConfig(
      disableScaleIn: pulumi.Input.fromValue(map['disableScaleIn'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      maxNodeCount: pulumi.Input.fromValue(map['maxNodeCount'] as int),
      minNodeCount: pulumi.Input.fromValue(map['minNodeCount'] as int),
      scaleInCooldownSeconds: pulumi.Input.fromValue(map['scaleInCooldownSeconds'] as int),
      scaleOutCooldownSeconds: pulumi.Input.fromValue(map['scaleOutCooldownSeconds'] as int),
      targetMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric>(map['targetMetrics']!, (value) => GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

