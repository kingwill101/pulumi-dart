// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis {
  /// The monitoring schedule for snapshot analysis. For EntityType-level config: unset / disabled = true indicates disabled by default for Features under it; otherwise by default enable snapshot analysis monitoring with monitoringInterval for Features under it.
  final pulumi.Input<bool>? disabled;
  /// Configuration of the snapshot analysis based monitoring pipeline running interval. The value is rolled up to full day.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  ///
  /// > **Warning:** `monitoring_interval` is deprecated and will be removed in a future release.
  final pulumi.Input<String>? monitoringInterval;
  /// Configuration of the snapshot analysis based monitoring pipeline running interval. The value indicates number of days. The default value is 1.
  /// If both FeaturestoreMonitoringConfig.SnapshotAnalysis.monitoring_interval_days and [FeaturestoreMonitoringConfig.SnapshotAnalysis.monitoring_interval][] are set when creating/updating EntityTypes/Features, FeaturestoreMonitoringConfig.SnapshotAnalysis.monitoring_interval_days will be used.
  final pulumi.Input<int>? monitoringIntervalDays;
  /// Customized export features time window for snapshot analysis. Unit is one day. The default value is 21 days. Minimum value is 1 day. Maximum value is 4000 days.
  final pulumi.Input<int>? stalenessDays;

  /// Creates a new [AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis].
  /// [disabled] The monitoring schedule for snapshot analysis. For EntityType-level config: unset / disabled = true indicates disabled by default for Features under it; otherwise by default enable snapshot analysis monitoring with monitoringInterval for Features under it.
  /// [monitoringInterval] Configuration of the snapshot analysis based monitoring pipeline running interval. The value is rolled up to full day.
  /// [monitoringIntervalDays] Configuration of the snapshot analysis based monitoring pipeline running interval. The value indicates number of days. The default value is 1.
  /// [stalenessDays] Customized export features time window for snapshot analysis. Unit is one day. The default value is 21 days. Minimum value is 1 day. Maximum value is 4000 days.
  AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis({
    this.disabled,
    this.monitoringInterval,
    this.monitoringIntervalDays,
    this.stalenessDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'monitoringInterval': ?monitoringInterval,
      'monitoringIntervalDays': ?monitoringIntervalDays,
      'stalenessDays': ?stalenessDays,
    };
  }

  factory AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis(
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      monitoringInterval: map['monitoringInterval'] == null ? null : (map['monitoringInterval'] as String).input(),
      monitoringIntervalDays: map['monitoringIntervalDays'] == null ? null : (map['monitoringIntervalDays'] as int).input(),
      stalenessDays: map['stalenessDays'] == null ? null : (map['stalenessDays'] as int).input(),
    );
  }
}

