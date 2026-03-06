// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HadoopClusterMonitor {
  /// The Operations Management Suite (OMS) workspace ID.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The Operations Management Suite (OMS) workspace key.
  final pulumi.Input<String> primaryKey;

  /// Creates a new [HadoopClusterMonitor].
  /// [logAnalyticsWorkspaceId] The Operations Management Suite (OMS) workspace ID.
  /// [primaryKey] The Operations Management Suite (OMS) workspace key.
  const HadoopClusterMonitor({
    required this.logAnalyticsWorkspaceId,
    required this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'primaryKey': primaryKey,
    };
  }

  factory HadoopClusterMonitor.fromMap(Map<String, dynamic> map) {
    return HadoopClusterMonitor(
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      primaryKey: pulumi.Input.fromValue(map['primaryKey'] as String),
    );
  }
}

