// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_upgrade_setting.dart';

/// Result data returned by getClusterNodePool.
class GetClusterNodePoolResult {
  /// Does this Node Pool have Auto-Scaling enabled?
  final bool autoScalingEnabled;

  /// The eviction policy used for Virtual Machines in the Virtual Machine Scale Set, when `priority` is set to `Spot`.
  final String evictionPolicy;
  final String gpuDriver;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kubernetesClusterName;

  /// The maximum number of Nodes allowed when auto-scaling is enabled.
  final int maxCount;

  /// The maximum number of Pods allowed on each Node in this Node Pool.
  final int maxPods;

  /// The minimum number of Nodes allowed when auto-scaling is enabled.
  final int minCount;

  /// The Mode for this Node Pool, specifying how these Nodes should be used (for either System or User resources).
  final String mode;
  final String name;

  /// The current number of Nodes in the Node Pool.
  final int nodeCount;

  /// A map of Kubernetes Labels applied to each Node in this Node Pool.
  final Map<String, String> nodeLabels;

  /// Do nodes in this Node Pool have a Public IP Address?
  final bool nodePublicIpEnabled;

  /// Resource ID for the Public IP Addresses Prefix for the nodes in this Agent Pool.
  final String nodePublicIpPrefixId;

  /// A map of Kubernetes Taints applied to each Node in this Node Pool.
  final List<String> nodeTaints;

  /// The version of Kubernetes configured on each Node in this Node Pool.
  final String orchestratorVersion;

  /// The size of the OS Disk on each Node in this Node Pool.
  final int osDiskSizeGb;

  /// The type of the OS Disk on each Node in this Node Pool.
  final String osDiskType;

  /// The operating system used on each Node in this Node Pool.
  final String osType;

  /// The priority of the Virtual Machines in the Virtual Machine Scale Set backing this Node Pool.
  final String priority;

  /// The ID of the Proximity Placement Group where the Virtual Machine Scale Set backing this Node Pool will be placed.
  final String proximityPlacementGroupId;
  final String resourceGroupName;

  /// The maximum price being paid for Virtual Machines in this Scale Set. `-1` means the current on-demand price for a Virtual Machine.
  final double spotMaxPrice;

  /// A mapping of tags assigned to the Kubernetes Cluster Node Pool.
  final Map<String, String> tags;

  /// A `upgrade_settings` block as documented below.
  final List<GetClusterNodePoolUpgradeSetting> upgradeSettings;

  /// The size of the Virtual Machines used in the Virtual Machine Scale Set backing this Node Pool.
  final String vmSize;

  /// The ID of the Subnet in which this Node Pool exists.
  final String vnetSubnetId;

  /// A list of the Availability Zones where the Nodes in this Node Pool exist.
  final List<String> zones;

  /// Creates a new [GetClusterNodePoolResult].
  /// [autoScalingEnabled] Does this Node Pool have Auto-Scaling enabled?
  /// [evictionPolicy] The eviction policy used for Virtual Machines in the Virtual Machine Scale Set, when `priority` is set to `Spot`.
  /// [gpuDriver] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kubernetesClusterName] Required.
  /// [maxCount] The maximum number of Nodes allowed when auto-scaling is enabled.
  /// [maxPods] The maximum number of Pods allowed on each Node in this Node Pool.
  /// [minCount] The minimum number of Nodes allowed when auto-scaling is enabled.
  /// [mode] The Mode for this Node Pool, specifying how these Nodes should be used (for either System or User resources).
  /// [name] Required.
  /// [nodeCount] The current number of Nodes in the Node Pool.
  /// [nodeLabels] A map of Kubernetes Labels applied to each Node in this Node Pool.
  /// [nodePublicIpEnabled] Do nodes in this Node Pool have a Public IP Address?
  /// [nodePublicIpPrefixId] Resource ID for the Public IP Addresses Prefix for the nodes in this Agent Pool.
  /// [nodeTaints] A map of Kubernetes Taints applied to each Node in this Node Pool.
  /// [orchestratorVersion] The version of Kubernetes configured on each Node in this Node Pool.
  /// [osDiskSizeGb] The size of the OS Disk on each Node in this Node Pool.
  /// [osDiskType] The type of the OS Disk on each Node in this Node Pool.
  /// [osType] The operating system used on each Node in this Node Pool.
  /// [priority] The priority of the Virtual Machines in the Virtual Machine Scale Set backing this Node Pool.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group where the Virtual Machine Scale Set backing this Node Pool will be placed.
  /// [resourceGroupName] Required.
  /// [spotMaxPrice] The maximum price being paid for Virtual Machines in this Scale Set. `-1` means the current on-demand price for a Virtual Machine.
  /// [tags] A mapping of tags assigned to the Kubernetes Cluster Node Pool.
  /// [upgradeSettings] A `upgrade_settings` block as documented below.
  /// [vmSize] The size of the Virtual Machines used in the Virtual Machine Scale Set backing this Node Pool.
  /// [vnetSubnetId] The ID of the Subnet in which this Node Pool exists.
  /// [zones] A list of the Availability Zones where the Nodes in this Node Pool exist.
  GetClusterNodePoolResult({
    required this.autoScalingEnabled,
    required this.evictionPolicy,
    required this.gpuDriver,
    required this.id,
    required this.kubernetesClusterName,
    required this.maxCount,
    required this.maxPods,
    required this.minCount,
    required this.mode,
    required this.name,
    required this.nodeCount,
    required this.nodeLabels,
    required this.nodePublicIpEnabled,
    required this.nodePublicIpPrefixId,
    required this.nodeTaints,
    required this.orchestratorVersion,
    required this.osDiskSizeGb,
    required this.osDiskType,
    required this.osType,
    required this.priority,
    required this.proximityPlacementGroupId,
    required this.resourceGroupName,
    required this.spotMaxPrice,
    required this.tags,
    required this.upgradeSettings,
    required this.vmSize,
    required this.vnetSubnetId,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingEnabled': autoScalingEnabled,
      'evictionPolicy': evictionPolicy,
      'gpuDriver': gpuDriver,
      'id': id,
      'kubernetesClusterName': kubernetesClusterName,
      'maxCount': maxCount,
      'maxPods': maxPods,
      'minCount': minCount,
      'mode': mode,
      'name': name,
      'nodeCount': nodeCount,
      'nodeLabels': nodeLabels,
      'nodePublicIpEnabled': nodePublicIpEnabled,
      'nodePublicIpPrefixId': nodePublicIpPrefixId,
      'nodeTaints': nodeTaints,
      'orchestratorVersion': orchestratorVersion,
      'osDiskSizeGb': osDiskSizeGb,
      'osDiskType': osDiskType,
      'osType': osType,
      'priority': priority,
      'proximityPlacementGroupId': proximityPlacementGroupId,
      'resourceGroupName': resourceGroupName,
      'spotMaxPrice': spotMaxPrice,
      'tags': tags,
      'upgradeSettings':
          pulumi.Input.encodeList<
            GetClusterNodePoolUpgradeSetting,
            Map<String, dynamic>
          >(upgradeSettings, (value) => value.toMap()),
      'vmSize': vmSize,
      'vnetSubnetId': vnetSubnetId,
      'zones': zones,
    };
  }

  factory GetClusterNodePoolResult.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolResult(
      autoScalingEnabled: map['autoScalingEnabled'] as bool,
      evictionPolicy: map['evictionPolicy'] as String,
      gpuDriver: map['gpuDriver'] as String,
      id: map['id'] as String,
      kubernetesClusterName: map['kubernetesClusterName'] as String,
      maxCount: map['maxCount'] as int,
      maxPods: map['maxPods'] as int,
      minCount: map['minCount'] as int,
      mode: map['mode'] as String,
      name: map['name'] as String,
      nodeCount: map['nodeCount'] as int,
      nodeLabels: (map['nodeLabels'] as Map).cast<String, String>(),
      nodePublicIpEnabled: map['nodePublicIpEnabled'] as bool,
      nodePublicIpPrefixId: map['nodePublicIpPrefixId'] as String,
      nodeTaints: (map['nodeTaints'] as List).cast<String>(),
      orchestratorVersion: map['orchestratorVersion'] as String,
      osDiskSizeGb: map['osDiskSizeGb'] as int,
      osDiskType: map['osDiskType'] as String,
      osType: map['osType'] as String,
      priority: map['priority'] as String,
      proximityPlacementGroupId: map['proximityPlacementGroupId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      spotMaxPrice: map['spotMaxPrice'] as double,
      tags: (map['tags'] as Map).cast<String, String>(),
      upgradeSettings:
          pulumi.Input.decodeList<GetClusterNodePoolUpgradeSetting>(
            map['upgradeSettings']!,
            (value) => GetClusterNodePoolUpgradeSetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      vmSize: map['vmSize'] as String,
      vnetSubnetId: map['vnetSubnetId'] as String,
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}
