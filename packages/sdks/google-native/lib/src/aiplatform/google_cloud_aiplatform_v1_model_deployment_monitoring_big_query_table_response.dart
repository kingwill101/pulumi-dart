// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ModelDeploymentMonitoringBigQueryTable specifies the BigQuery table name as well as some information of the logs stored in this table.
class GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse {
  /// The created BigQuery table to store logs. Customer could do their own query & analysis. Format: `bq://.model_deployment_monitoring_._`
  final pulumi.Input<String> bigqueryTablePath;

  /// The source of log.
  final pulumi.Input<String> logSource;

  /// The type of log.
  final pulumi.Input<String> logType;

  /// Creates a new [GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse].
  /// [bigqueryTablePath] The created BigQuery table to store logs. Customer could do their own query & analysis. Format: `bq://.model_deployment_monitoring_._`
  /// [logSource] The source of log.
  /// [logType] The type of log.
  GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse({
    required this.bigqueryTablePath,
    required this.logSource,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryTablePath': bigqueryTablePath,
      'logSource': logSource,
      'logType': logType,
    };
  }

  factory GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTableResponse(
      bigqueryTablePath: pulumi.Input.fromValue(
        map['bigqueryTablePath'] as String,
      ),
      logSource: pulumi.Input.fromValue(map['logSource'] as String),
      logType: pulumi.Input.fromValue(map['logType'] as String),
    );
  }
}
