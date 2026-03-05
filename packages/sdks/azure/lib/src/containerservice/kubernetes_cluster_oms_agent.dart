// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_oms_agent_oms_agent_identity.dart';

class KubernetesClusterOmsAgent {
  /// The ID of the Log Analytics Workspace which the OMS Agent should send data to.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// Is managed identity authentication for monitoring enabled?
  final pulumi.Input<bool>? msiAuthForMonitoringEnabled;
  /// An `oms_agent_identity` block is exported. The exported attributes are defined below.
  final pulumi.Input<List<KubernetesClusterOmsAgentOmsAgentIdentity>>? omsAgentIdentities;

  /// Creates a new [KubernetesClusterOmsAgent].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace which the OMS Agent should send data to.
  /// [msiAuthForMonitoringEnabled] Is managed identity authentication for monitoring enabled?
  /// [omsAgentIdentities] An `oms_agent_identity` block is exported. The exported attributes are defined below.
  KubernetesClusterOmsAgent({
    required this.logAnalyticsWorkspaceId,
    this.msiAuthForMonitoringEnabled,
    this.omsAgentIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'msiAuthForMonitoringEnabled': ?msiAuthForMonitoringEnabled,
      'omsAgentIdentities': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterOmsAgentOmsAgentIdentity>, List<Map<String, dynamic>>>(omsAgentIdentities, (value) => pulumi.Input.encodeList<KubernetesClusterOmsAgentOmsAgentIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory KubernetesClusterOmsAgent.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterOmsAgent(
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      msiAuthForMonitoringEnabled: (() { final guardedValue = map['msiAuthForMonitoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      omsAgentIdentities: (() { final guardedValue = map['omsAgentIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesClusterOmsAgentOmsAgentIdentity>(guardedValue, (value) => KubernetesClusterOmsAgentOmsAgentIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

