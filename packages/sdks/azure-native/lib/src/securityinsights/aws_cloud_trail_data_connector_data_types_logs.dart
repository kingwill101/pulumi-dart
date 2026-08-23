// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Logs data type.
class AwsCloudTrailDataConnectorDataTypesLogs {
  /// Describe whether this data type connection is enabled or not.
  final pulumi.Input<String> state;

  /// Creates a new [AwsCloudTrailDataConnectorDataTypesLogs].
  /// [state] Describe whether this data type connection is enabled or not.
  const AwsCloudTrailDataConnectorDataTypesLogs({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory AwsCloudTrailDataConnectorDataTypesLogs.fromMap(Map<String, dynamic> map) {
    return AwsCloudTrailDataConnectorDataTypesLogs(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
