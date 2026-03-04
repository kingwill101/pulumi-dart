// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_settings_read_pool_auto_scale_config_target_metric.dart';

class DatabaseInstanceSettingsReadPoolAutoScaleConfig {
  /// True if auto scale in is disabled.
  final pulumi.Input<bool>? disableScaleIn;

  /// True if Read Pool Auto Scale is enabled.
  final pulumi.Input<bool>? enabled;

  /// Maximum number of nodes in the read pool. If set to lower than current node count, node count will be updated.
  final pulumi.Input<int>? maxNodeCount;

  /// Minimum number of nodes in the read pool. If set to higher than current node count, node count will be updated.
  final pulumi.Input<int>? minNodeCount;

  /// The cooldown period for scale in operations.
  final pulumi.Input<int>? scaleInCooldownSeconds;

  /// The cooldown period for scale out operations.
  final pulumi.Input<int>? scaleOutCooldownSeconds;

  /// Target metrics for Read Pool Auto Scale. Must specify `target_metrics.metric` and `target_metrics.target_value` in subblock.
  final pulumi.Input<
    List<DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric>
  >?
  targetMetrics;

  /// Creates a new [DatabaseInstanceSettingsReadPoolAutoScaleConfig].
  /// [disableScaleIn] True if auto scale in is disabled.
  /// [enabled] True if Read Pool Auto Scale is enabled.
  /// [maxNodeCount] Maximum number of nodes in the read pool. If set to lower than current node count, node count will be updated.
  /// [minNodeCount] Minimum number of nodes in the read pool. If set to higher than current node count, node count will be updated.
  /// [scaleInCooldownSeconds] The cooldown period for scale in operations.
  /// [scaleOutCooldownSeconds] The cooldown period for scale out operations.
  /// [targetMetrics] Target metrics for Read Pool Auto Scale. Must specify `target_metrics.metric` and `target_metrics.target_value` in subblock.
  DatabaseInstanceSettingsReadPoolAutoScaleConfig({
    this.disableScaleIn,
    this.enabled,
    this.maxNodeCount,
    this.minNodeCount,
    this.scaleInCooldownSeconds,
    this.scaleOutCooldownSeconds,
    this.targetMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableScaleIn': ?disableScaleIn,
      'enabled': ?enabled,
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
      'scaleInCooldownSeconds': ?scaleInCooldownSeconds,
      'scaleOutCooldownSeconds': ?scaleOutCooldownSeconds,
      'targetMetrics':
          ?pulumi.Input.mapOptionalInputValue<
            List<DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric>,
            List<Map<String, dynamic>>
          >(
            targetMetrics,
            (value) =>
                pulumi.Input.encodeList<
                  DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DatabaseInstanceSettingsReadPoolAutoScaleConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseInstanceSettingsReadPoolAutoScaleConfig(
      disableScaleIn: (() {
        final guardedValue = map['disableScaleIn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      maxNodeCount: (() {
        final guardedValue = map['maxNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minNodeCount: (() {
        final guardedValue = map['minNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scaleInCooldownSeconds: (() {
        final guardedValue = map['scaleInCooldownSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scaleOutCooldownSeconds: (() {
        final guardedValue = map['scaleOutCooldownSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      targetMetrics: (() {
        final guardedValue = map['targetMetrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric
          >(
            guardedValue,
            (value) =>
                DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
