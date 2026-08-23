// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_oms_agent_oms_agent_identity.dart';

class GetKubernetesClusterOmsAgent {
  /// The ID of the Log Analytics Workspace to which the OMS Agent should send data.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// Is managed identity authentication for monitoring enabled?
  final pulumi.Input<bool> msiAuthForMonitoringEnabled;
  /// An `omsAgentIdentity` block as defined below.
  final pulumi.Input<List<GetKubernetesClusterOmsAgentOmsAgentIdentity>> omsAgentIdentities;

  /// Creates a new [GetKubernetesClusterOmsAgent].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace to which the OMS Agent should send data.
  /// [msiAuthForMonitoringEnabled] Is managed identity authentication for monitoring enabled?
  /// [omsAgentIdentities] An `omsAgentIdentity` block as defined below.
  const GetKubernetesClusterOmsAgent({
    required this.logAnalyticsWorkspaceId,
    required this.msiAuthForMonitoringEnabled,
    required this.omsAgentIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'msiAuthForMonitoringEnabled': msiAuthForMonitoringEnabled,
      'omsAgentIdentities': pulumi.Input.mapInputValue<List<GetKubernetesClusterOmsAgentOmsAgentIdentity>, List<Map<String, dynamic>>>(omsAgentIdentities, (value) => pulumi.Input.encodeList<GetKubernetesClusterOmsAgentOmsAgentIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetKubernetesClusterOmsAgent.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterOmsAgent(
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      msiAuthForMonitoringEnabled: pulumi.Input.fromValue(map['msiAuthForMonitoringEnabled'] as bool),
      omsAgentIdentities: pulumi.Input.fromValue(pulumi.Input.decodeList<GetKubernetesClusterOmsAgentOmsAgentIdentity>(map['omsAgentIdentities']!, (value) => GetKubernetesClusterOmsAgentOmsAgentIdentity.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
