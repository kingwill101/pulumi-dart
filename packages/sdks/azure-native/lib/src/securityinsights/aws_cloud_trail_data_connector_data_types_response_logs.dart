// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Logs data type.
class AwsCloudTrailDataConnectorDataTypesResponseLogs {
  /// Describe whether this data type connection is enabled or not.
  final pulumi.Input<String> state;

  /// Creates a new [AwsCloudTrailDataConnectorDataTypesResponseLogs].
  /// [state] Describe whether this data type connection is enabled or not.
  AwsCloudTrailDataConnectorDataTypesResponseLogs({required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': state};
  }

  factory AwsCloudTrailDataConnectorDataTypesResponseLogs.fromMap(
    Map<String, dynamic> map,
  ) {
    return AwsCloudTrailDataConnectorDataTypesResponseLogs(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
