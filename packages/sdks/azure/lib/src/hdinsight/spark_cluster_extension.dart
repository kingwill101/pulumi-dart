// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkClusterExtension {
  /// The workspace ID of the log analytics extension.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The workspace key of the log analytics extension.
  final pulumi.Input<String> primaryKey;

  /// Creates a new [SparkClusterExtension].
  /// [logAnalyticsWorkspaceId] The workspace ID of the log analytics extension.
  /// [primaryKey] The workspace key of the log analytics extension.
  SparkClusterExtension({
    required this.logAnalyticsWorkspaceId,
    required this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'primaryKey': primaryKey,
    };
  }

  factory SparkClusterExtension.fromMap(Map<String, dynamic> map) {
    return SparkClusterExtension(
      logAnalyticsWorkspaceId: (map['logAnalyticsWorkspaceId'] as String).input(),
      primaryKey: (map['primaryKey'] as String).input(),
    );
  }
}

