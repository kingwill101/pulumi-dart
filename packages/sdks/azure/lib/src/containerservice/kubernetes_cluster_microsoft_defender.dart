// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterMicrosoftDefender {
  /// Specifies the ID of the Log Analytics Workspace where the audit logs collected by Microsoft Defender should be sent to.
  final pulumi.Input<String> logAnalyticsWorkspaceId;

  /// Creates a new [KubernetesClusterMicrosoftDefender].
  /// [logAnalyticsWorkspaceId] Specifies the ID of the Log Analytics Workspace where the audit logs collected by Microsoft Defender should be sent to.
  KubernetesClusterMicrosoftDefender({
    required this.logAnalyticsWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
    };
  }

  factory KubernetesClusterMicrosoftDefender.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterMicrosoftDefender(
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
    );
  }
}

