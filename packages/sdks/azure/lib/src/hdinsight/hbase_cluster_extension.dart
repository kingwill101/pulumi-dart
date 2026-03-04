// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HBaseClusterExtension {
  /// The workspace ID of the log analytics extension.
  final pulumi.Input<String> logAnalyticsWorkspaceId;

  /// The workspace key of the log analytics extension.
  final pulumi.Input<String> primaryKey;

  /// Creates a new [HBaseClusterExtension].
  /// [logAnalyticsWorkspaceId] The workspace ID of the log analytics extension.
  /// [primaryKey] The workspace key of the log analytics extension.
  HBaseClusterExtension({
    required this.logAnalyticsWorkspaceId,
    required this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'primaryKey': primaryKey,
    };
  }

  factory HBaseClusterExtension.fromMap(Map<String, dynamic> map) {
    return HBaseClusterExtension(
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(
        map['logAnalyticsWorkspaceId'] as String,
      ),
      primaryKey: pulumi.Input.fromValue(map['primaryKey'] as String),
    );
  }
}
