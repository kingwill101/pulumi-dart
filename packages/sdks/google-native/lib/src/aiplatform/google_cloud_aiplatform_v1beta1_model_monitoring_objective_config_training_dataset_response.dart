// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_big_query_source_response.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_source_response.dart';
import 'google_cloud_aiplatform_v1beta1_sampling_strategy_response.dart';

/// Training Dataset information.
class GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDatasetResponse {
  /// The BigQuery table of the unmanaged Dataset used to train this Model.
  final pulumi.Input<GoogleCloudAiplatformV1beta1BigQuerySourceResponse> bigquerySource;
  /// Data format of the dataset, only applicable if the input is from Google Cloud Storage. The possible formats are: "tf-record" The source file is a TFRecord file. "csv" The source file is a CSV file. "jsonl" The source file is a JSONL file.
  final pulumi.Input<String> dataFormat;
  /// The resource name of the Dataset used to train this Model.
  final pulumi.Input<String> dataset;
  /// The Google Cloud Storage uri of the unmanaged Dataset used to train this Model.
  final pulumi.Input<GoogleCloudAiplatformV1beta1GcsSourceResponse> gcsSource;
  /// Strategy to sample data from Training Dataset. If not set, we process the whole dataset.
  final pulumi.Input<GoogleCloudAiplatformV1beta1SamplingStrategyResponse> loggingSamplingStrategy;
  /// The target field name the model is to predict. This field will be excluded when doing Predict and (or) Explain for the training data.
  final pulumi.Input<String> targetField;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDatasetResponse].
  /// [bigquerySource] The BigQuery table of the unmanaged Dataset used to train this Model.
  /// [dataFormat] Data format of the dataset, only applicable if the input is from Google Cloud Storage. The possible formats are: "tf-record" The source file is a TFRecord file. "csv" The source file is a CSV file. "jsonl" The source file is a JSONL file.
  /// [dataset] The resource name of the Dataset used to train this Model.
  /// [gcsSource] The Google Cloud Storage uri of the unmanaged Dataset used to train this Model.
  /// [loggingSamplingStrategy] Strategy to sample data from Training Dataset. If not set, we process the whole dataset.
  /// [targetField] The target field name the model is to predict. This field will be excluded when doing Predict and (or) Explain for the training data.
  const GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDatasetResponse({
    required this.bigquerySource,
    required this.dataFormat,
    required this.dataset,
    required this.gcsSource,
    required this.loggingSamplingStrategy,
    required this.targetField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigquerySource': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1BigQuerySourceResponse, Map<String, dynamic>>(bigquerySource, (value) => value.toMap()),
      'dataFormat': dataFormat,
      'dataset': dataset,
      'gcsSource': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1GcsSourceResponse, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
      'loggingSamplingStrategy': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1SamplingStrategyResponse, Map<String, dynamic>>(loggingSamplingStrategy, (value) => value.toMap()),
      'targetField': targetField,
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDatasetResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDatasetResponse(
      bigquerySource: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1BigQuerySourceResponse.fromMap((map['bigquerySource']! as Map).cast<String, dynamic>())),
      dataFormat: pulumi.Input.fromValue(map['dataFormat'] as String),
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
      gcsSource: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1GcsSourceResponse.fromMap((map['gcsSource']! as Map).cast<String, dynamic>())),
      loggingSamplingStrategy: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1SamplingStrategyResponse.fromMap((map['loggingSamplingStrategy']! as Map).cast<String, dynamic>())),
      targetField: pulumi.Input.fromValue(map['targetField'] as String),
    );
  }
}

