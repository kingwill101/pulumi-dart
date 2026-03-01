// ignore_for_file: unused_element, unnecessary_cast


/// Logs data type.
class AwsCloudTrailDataConnectorDataTypesResponseLogs {
  /// Describe whether this data type connection is enabled or not.
  final String state;

  /// Creates a new [AwsCloudTrailDataConnectorDataTypesResponseLogs].
  /// [state] Describe whether this data type connection is enabled or not.
  AwsCloudTrailDataConnectorDataTypesResponseLogs({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory AwsCloudTrailDataConnectorDataTypesResponseLogs.fromMap(Map<String, dynamic> map) {
    return AwsCloudTrailDataConnectorDataTypesResponseLogs(
      state: map['state'] as String,
    );
  }
}

