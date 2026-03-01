// ignore_for_file: unused_element, unnecessary_cast


class KafkaClusterExtension {
  /// The workspace ID of the log analytics extension.
  final String logAnalyticsWorkspaceId;
  /// The workspace key of the log analytics extension.
  final String primaryKey;

  /// Creates a new [KafkaClusterExtension].
  /// [logAnalyticsWorkspaceId] The workspace ID of the log analytics extension.
  /// [primaryKey] The workspace key of the log analytics extension.
  KafkaClusterExtension({
    required this.logAnalyticsWorkspaceId,
    required this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'primaryKey': primaryKey,
    };
  }

  factory KafkaClusterExtension.fromMap(Map<String, dynamic> map) {
    return KafkaClusterExtension(
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
      primaryKey: map['primaryKey'] as String,
    );
  }
}

