// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HadoopClusterExtension {
  /// The workspace ID of the log analytics extension.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The workspace key of the log analytics extension.
  final pulumi.Input<String> primaryKey;

  /// Creates a new [HadoopClusterExtension].
  /// [logAnalyticsWorkspaceId] The workspace ID of the log analytics extension.
  /// [primaryKey] The workspace key of the log analytics extension.
  const HadoopClusterExtension({
    required this.logAnalyticsWorkspaceId,
    required this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'primaryKey': primaryKey,
    };
  }

  factory HadoopClusterExtension.fromMap(Map<String, dynamic> map) {
    return HadoopClusterExtension(
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      primaryKey: pulumi.Input.fromValue(map['primaryKey'] as String),
    );
  }
}
