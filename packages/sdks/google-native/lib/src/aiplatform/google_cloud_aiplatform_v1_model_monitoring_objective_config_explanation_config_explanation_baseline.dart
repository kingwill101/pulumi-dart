// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_big_query_destination.dart';
import 'google_cloud_aiplatform_v1_gcs_destination.dart';
import 'google_cloud_aiplatform_v1_model_monitoring_objective_config_explanation_config_explanation_baseline_prediction_format.dart';

/// Output from BatchPredictionJob for Model Monitoring baseline dataset, which can be used to generate baseline attribution scores.
class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline {
  /// BigQuery location for BatchExplain output.
  final pulumi.Input<GoogleCloudAiplatformV1BigQueryDestination>? bigquery;
  /// Cloud Storage location for BatchExplain output.
  final pulumi.Input<GoogleCloudAiplatformV1GcsDestination>? gcs;
  /// The storage format of the predictions generated BatchPrediction job.
  final pulumi.Input<GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat>? predictionFormat;

  /// Creates a new [GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline].
  /// [bigquery] BigQuery location for BatchExplain output.
  /// [gcs] Cloud Storage location for BatchExplain output.
  /// [predictionFormat] The storage format of the predictions generated BatchPrediction job.
  GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline({
    this.bigquery,
    this.gcs,
    this.predictionFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigquery': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1BigQueryDestination, Map<String, dynamic>>(bigquery, (value) => value.toMap()),
      'gcs': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1GcsDestination, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'predictionFormat': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat, String>(predictionFormat, (value) => value.value),
    };
  }

  factory GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline(
      bigquery: map['bigquery'] == null ? null : (GoogleCloudAiplatformV1BigQueryDestination.fromMap((map['bigquery']! as Map).cast<String, dynamic>())).input(),
      gcs: map['gcs'] == null ? null : (GoogleCloudAiplatformV1GcsDestination.fromMap((map['gcs']! as Map).cast<String, dynamic>())).input(),
      predictionFormat: map['predictionFormat'] == null ? null : (GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat.fromValue(map['predictionFormat']! as String)).input(),
    );
  }
}

