// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Further describes this job's output. Supplements output_config.
class GoogleCloudAiplatformV1beta1BatchPredictionJobOutputInfoResponse {
  /// The path of the BigQuery dataset created, in `bq://projectId.bqDatasetId` format, into which the prediction output is written.
  final pulumi.Input<String> bigqueryOutputDataset;
  /// The name of the BigQuery table created, in `predictions_` format, into which the prediction output is written. Can be used by UI to generate the BigQuery output path, for example.
  final pulumi.Input<String> bigqueryOutputTable;
  /// The full path of the Cloud Storage directory created, into which the prediction output is written.
  final pulumi.Input<String> gcsOutputDirectory;

  /// Creates a new [GoogleCloudAiplatformV1beta1BatchPredictionJobOutputInfoResponse].
  /// [bigqueryOutputDataset] The path of the BigQuery dataset created, in `bq://projectId.bqDatasetId` format, into which the prediction output is written.
  /// [bigqueryOutputTable] The name of the BigQuery table created, in `predictions_` format, into which the prediction output is written. Can be used by UI to generate the BigQuery output path, for example.
  /// [gcsOutputDirectory] The full path of the Cloud Storage directory created, into which the prediction output is written.
  GoogleCloudAiplatformV1beta1BatchPredictionJobOutputInfoResponse({
    required this.bigqueryOutputDataset,
    required this.bigqueryOutputTable,
    required this.gcsOutputDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryOutputDataset': bigqueryOutputDataset,
      'bigqueryOutputTable': bigqueryOutputTable,
      'gcsOutputDirectory': gcsOutputDirectory,
    };
  }

  factory GoogleCloudAiplatformV1beta1BatchPredictionJobOutputInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1BatchPredictionJobOutputInfoResponse(
      bigqueryOutputDataset: pulumi.Input.fromValue(map['bigqueryOutputDataset'] as String),
      bigqueryOutputTable: pulumi.Input.fromValue(map['bigqueryOutputTable'] as String),
      gcsOutputDirectory: pulumi.Input.fromValue(map['gcsOutputDirectory'] as String),
    );
  }
}

