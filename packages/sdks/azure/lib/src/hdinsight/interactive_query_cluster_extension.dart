// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InteractiveQueryClusterExtension {
  /// The workspace ID of the log analytics extension.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The workspace key of the log analytics extension.
  final pulumi.Input<String> primaryKey;

  /// Creates a new [InteractiveQueryClusterExtension].
  /// [logAnalyticsWorkspaceId] The workspace ID of the log analytics extension.
  /// [primaryKey] The workspace key of the log analytics extension.
  const InteractiveQueryClusterExtension({
    required this.logAnalyticsWorkspaceId,
    required this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'primaryKey': primaryKey,
    };
  }

  factory InteractiveQueryClusterExtension.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterExtension(
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      primaryKey: pulumi.Input.fromValue(map['primaryKey'] as String),
    );
  }
}
