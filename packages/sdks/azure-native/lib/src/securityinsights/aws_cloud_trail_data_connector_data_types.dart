// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_cloud_trail_data_connector_data_types_logs.dart';

/// The available data types for Amazon Web Services CloudTrail data connector.
class AwsCloudTrailDataConnectorDataTypes {
  /// Logs data type.
  final pulumi.Input<AwsCloudTrailDataConnectorDataTypesLogs> logs;

  /// Creates a new [AwsCloudTrailDataConnectorDataTypes].
  /// [logs] Logs data type.
  AwsCloudTrailDataConnectorDataTypes({
    required this.logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': pulumi.Input.mapInputValue<AwsCloudTrailDataConnectorDataTypesLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
    };
  }

  factory AwsCloudTrailDataConnectorDataTypes.fromMap(Map<String, dynamic> map) {
    return AwsCloudTrailDataConnectorDataTypes(
      logs: pulumi.Input.fromValue(AwsCloudTrailDataConnectorDataTypesLogs.fromMap((map['logs']! as Map).cast<String, dynamic>())),
    );
  }
}

