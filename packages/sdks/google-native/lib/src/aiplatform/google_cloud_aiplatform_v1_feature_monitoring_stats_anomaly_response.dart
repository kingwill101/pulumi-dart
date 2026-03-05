// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_feature_stats_anomaly_response.dart';

/// A list of historical SnapshotAnalysis or ImportFeaturesAnalysis stats requested by user, sorted by FeatureStatsAnomaly.start_time descending.
class GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse {
  /// The stats and anomalies generated at specific timestamp.
  final pulumi.Input<GoogleCloudAiplatformV1FeatureStatsAnomalyResponse> featureStatsAnomaly;
  /// The objective for each stats.
  final pulumi.Input<String> objective;

  /// Creates a new [GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse].
  /// [featureStatsAnomaly] The stats and anomalies generated at specific timestamp.
  /// [objective] The objective for each stats.
  GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse({
    required this.featureStatsAnomaly,
    required this.objective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureStatsAnomaly': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1FeatureStatsAnomalyResponse, Map<String, dynamic>>(featureStatsAnomaly, (value) => value.toMap()),
      'objective': objective,
    };
  }

  factory GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse(
      featureStatsAnomaly: pulumi.Input.fromValue(GoogleCloudAiplatformV1FeatureStatsAnomalyResponse.fromMap((map['featureStatsAnomaly']! as Map).cast<String, dynamic>())),
      objective: pulumi.Input.fromValue(map['objective'] as String),
    );
  }
}

