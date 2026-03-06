// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of the Featurestore's Snapshot Analysis Based Monitoring. This type of analysis generates statistics for each Feature based on a snapshot of the latest feature value of each entities every monitoring_interval.
class GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysisResponse {
  /// The monitoring schedule for snapshot analysis. For EntityType-level config: unset / disabled = true indicates disabled by default for Features under it; otherwise by default enable snapshot analysis monitoring with monitoring_interval for Features under it. Feature-level config: disabled = true indicates disabled regardless of the EntityType-level config; unset monitoring_interval indicates going with EntityType-level config; otherwise run snapshot analysis monitoring with monitoring_interval regardless of the EntityType-level config. Explicitly Disable the snapshot analysis based monitoring.
  final pulumi.Input<bool> disabled;
  /// Configuration of the snapshot analysis based monitoring pipeline running interval. The value indicates number of days.
  final pulumi.Input<int> monitoringIntervalDays;
  /// Customized export features time window for snapshot analysis. Unit is one day. Default value is 3 weeks. Minimum value is 1 day. Maximum value is 4000 days.
  final pulumi.Input<int> stalenessDays;

  /// Creates a new [GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysisResponse].
  /// [disabled] The monitoring schedule for snapshot analysis. For EntityType-level config: unset / disabled = true indicates disabled by default for Features under it; otherwise by default enable snapshot analysis monitoring with monitoring_interval for Features under it. Feature-level config: disabled = true indicates disabled regardless of the EntityType-level config; unset monitoring_interval indicates going with EntityType-level config; otherwise run snapshot analysis monitoring with monitoring_interval regardless of the EntityType-level config. Explicitly Disable the snapshot analysis based monitoring.
  /// [monitoringIntervalDays] Configuration of the snapshot analysis based monitoring pipeline running interval. The value indicates number of days.
  /// [stalenessDays] Customized export features time window for snapshot analysis. Unit is one day. Default value is 3 weeks. Minimum value is 1 day. Maximum value is 4000 days.
  const GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysisResponse({
    required this.disabled,
    required this.monitoringIntervalDays,
    required this.stalenessDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
      'monitoringIntervalDays': monitoringIntervalDays,
      'stalenessDays': stalenessDays,
    };
  }

  factory GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysisResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysisResponse(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      monitoringIntervalDays: pulumi.Input.fromValue(map['monitoringIntervalDays'] as int),
      stalenessDays: pulumi.Input.fromValue(map['stalenessDays'] as int),
    );
  }
}

