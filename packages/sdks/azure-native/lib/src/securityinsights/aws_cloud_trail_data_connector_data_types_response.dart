// ignore_for_file: unused_element, unnecessary_cast

import 'aws_cloud_trail_data_connector_data_types_response_logs.dart';

/// The available data types for Amazon Web Services CloudTrail data connector.
class AwsCloudTrailDataConnectorDataTypesResponse {
  /// Logs data type.
  final AwsCloudTrailDataConnectorDataTypesResponseLogs logs;

  /// Creates a new [AwsCloudTrailDataConnectorDataTypesResponse].
  /// [logs] Logs data type.
  AwsCloudTrailDataConnectorDataTypesResponse({
    required this.logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': logs.toMap(),
    };
  }

  factory AwsCloudTrailDataConnectorDataTypesResponse.fromMap(Map<String, dynamic> map) {
    return AwsCloudTrailDataConnectorDataTypesResponse(
      logs: AwsCloudTrailDataConnectorDataTypesResponseLogs.fromMap((map['logs'] as Map).cast<String, dynamic>()),
    );
  }
}

