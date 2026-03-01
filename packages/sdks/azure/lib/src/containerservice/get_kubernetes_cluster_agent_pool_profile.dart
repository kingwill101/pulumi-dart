// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_agent_pool_profile_upgrade_setting.dart';

class GetKubernetesClusterAgentPoolProfile {
  /// If the auto-scaler is enabled.
  final bool autoScalingEnabled;
  /// The number of Agents (VMs) in the Pool.
  final int count;
  /// Maximum number of nodes for auto-scaling
  final int maxCount;
  /// The maximum number of pods that can run on each agent.
  final int maxPods;
  /// Minimum number of nodes for auto-scaling
  final int minCount;
  /// The name of the managed Kubernetes Cluster.
  final String name;
  final Map<String, String> nodeLabels;
  /// If the Public IPs for the nodes in this Agent Pool are enabled.
  final bool nodePublicIpEnabled;
  /// Resource ID for the Public IP Addresses Prefix for the nodes in this Agent Pool.
  final String nodePublicIpPrefixId;
  final List<String> nodeTaints;
  /// Kubernetes version used for the Agents.
  final String orchestratorVersion;
  /// The size of the Agent VM's Operating System Disk in GB.
  final int osDiskSizeGb;
  /// The Operating System used for the Agents.
  final String osType;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The type of Managed Service Identity that is configured on this Kubernetes Cluster.
  final String type;
  /// A `upgrade_settings` block as documented below.
  final List<GetKubernetesClusterAgentPoolProfileUpgradeSetting> upgradeSettings;
  /// The size of each VM in the Agent Pool (e.g. `Standard_F1`).
  final String vmSize;
  /// The ID of the Subnet where the Agents in the Pool are provisioned.
  final String vnetSubnetId;
  /// A list of Availability Zones in which this Kubernetes Cluster is located.
  final List<String> zones;

  /// Creates a new [GetKubernetesClusterAgentPoolProfile].
  /// [autoScalingEnabled] If the auto-scaler is enabled.
  /// [count] The number of Agents (VMs) in the Pool.
  /// [maxCount] Maximum number of nodes for auto-scaling
  /// [maxPods] The maximum number of pods that can run on each agent.
  /// [minCount] Minimum number of nodes for auto-scaling
  /// [name] The name of the managed Kubernetes Cluster.
  /// [nodeLabels] Required.
  /// [nodePublicIpEnabled] If the Public IPs for the nodes in this Agent Pool are enabled.
  /// [nodePublicIpPrefixId] Resource ID for the Public IP Addresses Prefix for the nodes in this Agent Pool.
  /// [nodeTaints] Required.
  /// [orchestratorVersion] Kubernetes version used for the Agents.
  /// [osDiskSizeGb] The size of the Agent VM's Operating System Disk in GB.
  /// [osType] The Operating System used for the Agents.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type of Managed Service Identity that is configured on this Kubernetes Cluster.
  /// [upgradeSettings] A `upgrade_settings` block as documented below.
  /// [vmSize] The size of each VM in the Agent Pool (e.g. `Standard_F1`).
  /// [vnetSubnetId] The ID of the Subnet where the Agents in the Pool are provisioned.
  /// [zones] A list of Availability Zones in which this Kubernetes Cluster is located.
  GetKubernetesClusterAgentPoolProfile({
    required this.autoScalingEnabled,
    required this.count,
    required this.maxCount,
    required this.maxPods,
    required this.minCount,
    required this.name,
    required this.nodeLabels,
    required this.nodePublicIpEnabled,
    required this.nodePublicIpPrefixId,
    required this.nodeTaints,
    required this.orchestratorVersion,
    required this.osDiskSizeGb,
    required this.osType,
    required this.tags,
    required this.type,
    required this.upgradeSettings,
    required this.vmSize,
    required this.vnetSubnetId,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingEnabled': autoScalingEnabled,
      'count': count,
      'maxCount': maxCount,
      'maxPods': maxPods,
      'minCount': minCount,
      'name': name,
      'nodeLabels': nodeLabels,
      'nodePublicIpEnabled': nodePublicIpEnabled,
      'nodePublicIpPrefixId': nodePublicIpPrefixId,
      'nodeTaints': nodeTaints,
      'orchestratorVersion': orchestratorVersion,
      'osDiskSizeGb': osDiskSizeGb,
      'osType': osType,
      'tags': tags,
      'type': type,
      'upgradeSettings': pulumi.Input.encodeList<GetKubernetesClusterAgentPoolProfileUpgradeSetting, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'vmSize': vmSize,
      'vnetSubnetId': vnetSubnetId,
      'zones': zones,
    };
  }

  factory GetKubernetesClusterAgentPoolProfile.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterAgentPoolProfile(
      autoScalingEnabled: map['autoScalingEnabled'] as bool,
      count: map['count'] as int,
      maxCount: map['maxCount'] as int,
      maxPods: map['maxPods'] as int,
      minCount: map['minCount'] as int,
      name: map['name'] as String,
      nodeLabels: (map['nodeLabels'] as Map).cast<String, String>(),
      nodePublicIpEnabled: map['nodePublicIpEnabled'] as bool,
      nodePublicIpPrefixId: map['nodePublicIpPrefixId'] as String,
      nodeTaints: (map['nodeTaints'] as List).cast<String>(),
      orchestratorVersion: map['orchestratorVersion'] as String,
      osDiskSizeGb: map['osDiskSizeGb'] as int,
      osType: map['osType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      upgradeSettings: pulumi.Input.decodeList<GetKubernetesClusterAgentPoolProfileUpgradeSetting>(map['upgradeSettings'], (value) => GetKubernetesClusterAgentPoolProfileUpgradeSetting.fromMap((value as Map).cast<String, dynamic>())),
      vmSize: map['vmSize'] as String,
      vnetSubnetId: map['vnetSubnetId'] as String,
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

