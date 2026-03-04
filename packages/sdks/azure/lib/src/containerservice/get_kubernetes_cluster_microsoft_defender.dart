// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterMicrosoftDefender {
  /// The ID of the Log Analytics Workspace to which the OMS Agent should send data.
  final pulumi.Input<String> logAnalyticsWorkspaceId;

  /// Creates a new [GetKubernetesClusterMicrosoftDefender].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace to which the OMS Agent should send data.
  GetKubernetesClusterMicrosoftDefender({
    required this.logAnalyticsWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
    };
  }

  factory GetKubernetesClusterMicrosoftDefender.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetKubernetesClusterMicrosoftDefender(
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(
        map['logAnalyticsWorkspaceId'] as String,
      ),
    );
  }
}
