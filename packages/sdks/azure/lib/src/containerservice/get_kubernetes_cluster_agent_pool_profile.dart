// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_agent_pool_profile_upgrade_setting.dart';

class GetKubernetesClusterAgentPoolProfile {
  /// If the auto-scaler is enabled.
  final pulumi.Input<bool> autoScalingEnabled;
  /// The number of Agents (VMs) in the Pool.
  final pulumi.Input<int> count;
  /// Maximum number of nodes for auto-scaling
  final pulumi.Input<int> maxCount;
  /// The maximum number of pods that can run on each agent.
  final pulumi.Input<int> maxPods;
  /// Minimum number of nodes for auto-scaling
  final pulumi.Input<int> minCount;
  /// The name of the managed Kubernetes Cluster.
  final pulumi.Input<String> name;
  final pulumi.Input<Map<String, String>> nodeLabels;
  /// If the Public IPs for the nodes in this Agent Pool are enabled.
  final pulumi.Input<bool> nodePublicIpEnabled;
  /// Resource ID for the Public IP Addresses Prefix for the nodes in this Agent Pool.
  final pulumi.Input<String> nodePublicIpPrefixId;
  final pulumi.Input<List<String>> nodeTaints;
  /// Kubernetes version used for the Agents.
  final pulumi.Input<String> orchestratorVersion;
  /// The size of the Agent VM's Operating System Disk in GB.
  final pulumi.Input<int> osDiskSizeGb;
  /// The Operating System used for the Agents.
  final pulumi.Input<String> osType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The type of Managed Service Identity that is configured on this Kubernetes Cluster.
  final pulumi.Input<String> type;
  /// A `upgrade_settings` block as documented below.
  final pulumi.Input<List<GetKubernetesClusterAgentPoolProfileUpgradeSetting>> upgradeSettings;
  /// The size of each VM in the Agent Pool (e.g. `Standard_F1`).
  final pulumi.Input<String> vmSize;
  /// The ID of the Subnet where the Agents in the Pool are provisioned.
  final pulumi.Input<String> vnetSubnetId;
  /// A list of Availability Zones in which this Kubernetes Cluster is located.
  final pulumi.Input<List<String>> zones;

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
      'upgradeSettings': pulumi.Input.mapInputValue<List<GetKubernetesClusterAgentPoolProfileUpgradeSetting>, List<Map<String, dynamic>>>(upgradeSettings, (value) => pulumi.Input.encodeList<GetKubernetesClusterAgentPoolProfileUpgradeSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmSize': vmSize,
      'vnetSubnetId': vnetSubnetId,
      'zones': zones,
    };
  }

  factory GetKubernetesClusterAgentPoolProfile.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterAgentPoolProfile(
      autoScalingEnabled: pulumi.Input.fromValue(map['autoScalingEnabled'] as bool),
      count: pulumi.Input.fromValue(map['count'] as int),
      maxCount: pulumi.Input.fromValue(map['maxCount'] as int),
      maxPods: pulumi.Input.fromValue(map['maxPods'] as int),
      minCount: pulumi.Input.fromValue(map['minCount'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      nodeLabels: pulumi.Input.fromValue((map['nodeLabels'] as Map).cast<String, String>()),
      nodePublicIpEnabled: pulumi.Input.fromValue(map['nodePublicIpEnabled'] as bool),
      nodePublicIpPrefixId: pulumi.Input.fromValue(map['nodePublicIpPrefixId'] as String),
      nodeTaints: pulumi.Input.fromValue((map['nodeTaints'] as List).cast<String>()),
      orchestratorVersion: pulumi.Input.fromValue(map['orchestratorVersion'] as String),
      osDiskSizeGb: pulumi.Input.fromValue(map['osDiskSizeGb'] as int),
      osType: pulumi.Input.fromValue(map['osType'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
      upgradeSettings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetKubernetesClusterAgentPoolProfileUpgradeSetting>(map['upgradeSettings']!, (value) => GetKubernetesClusterAgentPoolProfileUpgradeSetting.fromMap((value as Map).cast<String, dynamic>()))),
      vmSize: pulumi.Input.fromValue(map['vmSize'] as String),
      vnetSubnetId: pulumi.Input.fromValue(map['vnetSubnetId'] as String),
      zones: pulumi.Input.fromValue((map['zones'] as List).cast<String>()),
    );
  }
}

