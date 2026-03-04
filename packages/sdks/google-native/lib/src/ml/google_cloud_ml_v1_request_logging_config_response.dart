// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for logging request-response pairs to a BigQuery table. Online prediction requests to a model version and the responses to these requests are converted to raw strings and saved to the specified BigQuery table. Logging is constrained by [BigQuery quotas and limits](/bigquery/quotas). If your project exceeds BigQuery quotas or limits, AI Platform Prediction does not log request-response pairs, but it continues to serve predictions. If you are using [continuous evaluation](/ml-engine/docs/continuous-evaluation/), you do not need to specify this configuration manually. Setting up continuous evaluation automatically enables logging of request-response pairs.
class GoogleCloudMlV1RequestLoggingConfigResponse {
  /// Fully qualified BigQuery table name in the following format: " project_id.dataset_name.table_name" The specified table must already exist, and the "Cloud ML Service Agent" for your project must have permission to write to it. The table must have the following [schema](/bigquery/docs/schemas): Field nameType Mode model STRING REQUIRED model_version STRING REQUIRED time TIMESTAMP REQUIRED raw_data STRING REQUIRED raw_prediction STRING NULLABLE groundtruth STRING NULLABLE
  final pulumi.Input<String> bigqueryTableName;

  /// Percentage of requests to be logged, expressed as a fraction from 0 to 1. For example, if you want to log 10% of requests, enter `0.1`. The sampling window is the lifetime of the model version. Defaults to 0.
  final pulumi.Input<double> samplingPercentage;

  /// Creates a new [GoogleCloudMlV1RequestLoggingConfigResponse].
  /// [bigqueryTableName] Fully qualified BigQuery table name in the following format: " project_id.dataset_name.table_name" The specified table must already exist, and the "Cloud ML Service Agent" for your project must have permission to write to it. The table must have the following [schema](/bigquery/docs/schemas): Field nameType Mode model STRING REQUIRED model_version STRING REQUIRED time TIMESTAMP REQUIRED raw_data STRING REQUIRED raw_prediction STRING NULLABLE groundtruth STRING NULLABLE
  /// [samplingPercentage] Percentage of requests to be logged, expressed as a fraction from 0 to 1. For example, if you want to log 10% of requests, enter `0.1`. The sampling window is the lifetime of the model version. Defaults to 0.
  GoogleCloudMlV1RequestLoggingConfigResponse({
    required this.bigqueryTableName,
    required this.samplingPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryTableName': bigqueryTableName,
      'samplingPercentage': samplingPercentage,
    };
  }

  factory GoogleCloudMlV1RequestLoggingConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1RequestLoggingConfigResponse(
      bigqueryTableName: pulumi.Input.fromValue(
        map['bigqueryTableName'] as String,
      ),
      samplingPercentage: pulumi.Input.fromValue(
        map['samplingPercentage'] as double,
      ),
    );
  }
}
