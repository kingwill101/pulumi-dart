// ignore_for_file: unused_element, unnecessary_cast


/// Logs data type.
class AwsCloudTrailDataConnectorDataTypesLogs {
  /// Describe whether this data type connection is enabled or not.
  final String state;

  /// Creates a new [AwsCloudTrailDataConnectorDataTypesLogs].
  /// [state] Describe whether this data type connection is enabled or not.
  AwsCloudTrailDataConnectorDataTypesLogs({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory AwsCloudTrailDataConnectorDataTypesLogs.fromMap(Map<String, dynamic> map) {
    return AwsCloudTrailDataConnectorDataTypesLogs(
      state: map['state'] as String,
    );
  }
}

