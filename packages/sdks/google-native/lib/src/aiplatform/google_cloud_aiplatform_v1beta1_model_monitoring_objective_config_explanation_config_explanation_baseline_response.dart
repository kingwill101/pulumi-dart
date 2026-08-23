// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_big_query_destination_response.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_destination_response.dart';

/// Output from BatchPredictionJob for Model Monitoring baseline dataset, which can be used to generate baseline attribution scores.
class GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselineResponse {
  /// BigQuery location for BatchExplain output.
  final pulumi.Input<GoogleCloudAiplatformV1beta1BigQueryDestinationResponse> bigquery;
  /// Cloud Storage location for BatchExplain output.
  final pulumi.Input<GoogleCloudAiplatformV1beta1GcsDestinationResponse> gcs;
  /// The storage format of the predictions generated BatchPrediction job.
  final pulumi.Input<String> predictionFormat;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselineResponse].
  /// [bigquery] BigQuery location for BatchExplain output.
  /// [gcs] Cloud Storage location for BatchExplain output.
  /// [predictionFormat] The storage format of the predictions generated BatchPrediction job.
  const GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselineResponse({
    required this.bigquery,
    required this.gcs,
    required this.predictionFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigquery': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1BigQueryDestinationResponse, Map<String, dynamic>>(bigquery, (value) => value.toMap()),
      'gcs': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1GcsDestinationResponse, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'predictionFormat': predictionFormat,
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselineResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselineResponse(
      bigquery: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1BigQueryDestinationResponse.fromMap((map['bigquery']! as Map).cast<String, dynamic>())),
      gcs: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1GcsDestinationResponse.fromMap((map['gcs']! as Map).cast<String, dynamic>())),
      predictionFormat: pulumi.Input.fromValue(map['predictionFormat'] as String),
    );
  }
}
