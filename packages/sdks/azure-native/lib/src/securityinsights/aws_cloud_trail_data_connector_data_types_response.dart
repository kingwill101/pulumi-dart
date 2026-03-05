// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_cloud_trail_data_connector_data_types_response_logs.dart';

/// The available data types for Amazon Web Services CloudTrail data connector.
class AwsCloudTrailDataConnectorDataTypesResponse {
  /// Logs data type.
  final pulumi.Input<AwsCloudTrailDataConnectorDataTypesResponseLogs> logs;

  /// Creates a new [AwsCloudTrailDataConnectorDataTypesResponse].
  /// [logs] Logs data type.
  AwsCloudTrailDataConnectorDataTypesResponse({
    required this.logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': pulumi.Input.mapInputValue<AwsCloudTrailDataConnectorDataTypesResponseLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
    };
  }

  factory AwsCloudTrailDataConnectorDataTypesResponse.fromMap(Map<String, dynamic> map) {
    return AwsCloudTrailDataConnectorDataTypesResponse(
      logs: pulumi.Input.fromValue(AwsCloudTrailDataConnectorDataTypesResponseLogs.fromMap((map['logs']! as Map).cast<String, dynamic>())),
    );
  }
}

