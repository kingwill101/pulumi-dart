// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_upgrade_setting.dart';

/// Result data returned by getClusterNodePool.
class GetClusterNodePoolResult {
  /// Does this Node Pool have Auto-Scaling enabled?
  final bool? autoScalingEnabled;
  /// The eviction policy used for Virtual Machines in the Virtual Machine Scale Set, when `priority` is set to `Spot`.
  final String? evictionPolicy;
  final String? gpuDriver;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? kubernetesClusterName;
  /// The maximum number of Nodes allowed when auto-scaling is enabled.
  final int? maxCount;
  /// The maximum number of Pods allowed on each Node in this Node Pool.
  final int? maxPods;
  /// The minimum number of Nodes allowed when auto-scaling is enabled.
  final int? minCount;
  /// The Mode for this Node Pool, specifying how these Nodes should be used (for either System or User resources).
  final String? mode;
  final String? name;
  /// The current number of Nodes in the Node Pool.
  final int? nodeCount;
  /// The current node image version running on this Node Pool.
  final String? nodeImageVersion;
  /// A map of Kubernetes Labels applied to each Node in this Node Pool.
  final Map<String, String>? nodeLabels;
  /// Do nodes in this Node Pool have a Public IP Address?
  final bool? nodePublicIpEnabled;
  /// Resource ID for the Public IP Addresses Prefix for the nodes in this Agent Pool.
  final String? nodePublicIpPrefixId;
  /// A map of Kubernetes Taints applied to each Node in this Node Pool.
  final List<String>? nodeTaints;
  /// The version of Kubernetes configured on each Node in this Node Pool.
  final String? orchestratorVersion;
  /// The size of the OS Disk on each Node in this Node Pool.
  final int? osDiskSizeGb;
  /// The type of the OS Disk on each Node in this Node Pool.
  final String? osDiskType;
  /// The operating system used on each Node in this Node Pool.
  final String? osType;
  /// The priority of the Virtual Machines in the Virtual Machine Scale Set backing this Node Pool.
  final String? priority;
  /// The ID of the Proximity Placement Group where the Virtual Machine Scale Set backing this Node Pool will be placed.
  final String? proximityPlacementGroupId;
  final String? resourceGroupName;
  /// The maximum price being paid for Virtual Machines in this Scale Set. `-1` means the current on-demand price for a Virtual Machine.
  final double? spotMaxPrice;
  /// A mapping of tags assigned to the Kubernetes Cluster Node Pool.
  final Map<String, String>? tags;
  /// A `upgradeSettings` block as documented below.
  final List<GetClusterNodePoolUpgradeSetting>? upgradeSettings;
  /// The size of the Virtual Machines used in the Virtual Machine Scale Set backing this Node Pool.
  final String? vmSize;
  /// The ID of the Subnet in which this Node Pool exists.
  final String? vnetSubnetId;
  /// A list of the Availability Zones where the Nodes in this Node Pool exist.
  final List<String>? zones;

  /// Creates a new [GetClusterNodePoolResult].
  /// [autoScalingEnabled] Does this Node Pool have Auto-Scaling enabled?
  /// [evictionPolicy] The eviction policy used for Virtual Machines in the Virtual Machine Scale Set, when `priority` is set to `Spot`.
  /// [gpuDriver] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kubernetesClusterName] Optional.
  /// [maxCount] The maximum number of Nodes allowed when auto-scaling is enabled.
  /// [maxPods] The maximum number of Pods allowed on each Node in this Node Pool.
  /// [minCount] The minimum number of Nodes allowed when auto-scaling is enabled.
  /// [mode] The Mode for this Node Pool, specifying how these Nodes should be used (for either System or User resources).
  /// [name] Optional.
  /// [nodeCount] The current number of Nodes in the Node Pool.
  /// [nodeImageVersion] The current node image version running on this Node Pool.
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
  /// [resourceGroupName] Optional.
  /// [spotMaxPrice] The maximum price being paid for Virtual Machines in this Scale Set. `-1` means the current on-demand price for a Virtual Machine.
  /// [tags] A mapping of tags assigned to the Kubernetes Cluster Node Pool.
  /// [upgradeSettings] A `upgradeSettings` block as documented below.
  /// [vmSize] The size of the Virtual Machines used in the Virtual Machine Scale Set backing this Node Pool.
  /// [vnetSubnetId] The ID of the Subnet in which this Node Pool exists.
  /// [zones] A list of the Availability Zones where the Nodes in this Node Pool exist.
  const GetClusterNodePoolResult({
    this.autoScalingEnabled,
    this.evictionPolicy,
    this.gpuDriver,
    this.id,
    this.kubernetesClusterName,
    this.maxCount,
    this.maxPods,
    this.minCount,
    this.mode,
    this.name,
    this.nodeCount,
    this.nodeImageVersion,
    this.nodeLabels,
    this.nodePublicIpEnabled,
    this.nodePublicIpPrefixId,
    this.nodeTaints,
    this.orchestratorVersion,
    this.osDiskSizeGb,
    this.osDiskType,
    this.osType,
    this.priority,
    this.proximityPlacementGroupId,
    this.resourceGroupName,
    this.spotMaxPrice,
    this.tags,
    this.upgradeSettings,
    this.vmSize,
    this.vnetSubnetId,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingEnabled': ?autoScalingEnabled,
      'evictionPolicy': ?evictionPolicy,
      'gpuDriver': ?gpuDriver,
      'id': ?id,
      'kubernetesClusterName': ?kubernetesClusterName,
      'maxCount': ?maxCount,
      'maxPods': ?maxPods,
      'minCount': ?minCount,
      'mode': ?mode,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'nodeImageVersion': ?nodeImageVersion,
      'nodeLabels': ?nodeLabels,
      'nodePublicIpEnabled': ?nodePublicIpEnabled,
      'nodePublicIpPrefixId': ?nodePublicIpPrefixId,
      'nodeTaints': ?nodeTaints,
      'orchestratorVersion': ?orchestratorVersion,
      'osDiskSizeGb': ?osDiskSizeGb,
      'osDiskType': ?osDiskType,
      'osType': ?osType,
      'priority': ?priority,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'resourceGroupName': ?resourceGroupName,
      'spotMaxPrice': ?spotMaxPrice,
      'tags': ?tags,
      'upgradeSettings': ?(() { final guardedValue = upgradeSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterNodePoolUpgradeSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'vmSize': ?vmSize,
      'vnetSubnetId': ?vnetSubnetId,
      'zones': ?zones,
    };
  }

  factory GetClusterNodePoolResult.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolResult(
      autoScalingEnabled: (() { final guardedValue = map['autoScalingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      evictionPolicy: (() { final guardedValue = map['evictionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gpuDriver: (() { final guardedValue = map['gpuDriver']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubernetesClusterName: (() { final guardedValue = map['kubernetesClusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxCount: (() { final guardedValue = map['maxCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxPods: (() { final guardedValue = map['maxPods']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      nodeImageVersion: (() { final guardedValue = map['nodeImageVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeLabels: (() { final guardedValue = map['nodeLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      nodePublicIpEnabled: (() { final guardedValue = map['nodePublicIpEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      nodePublicIpPrefixId: (() { final guardedValue = map['nodePublicIpPrefixId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeTaints: (() { final guardedValue = map['nodeTaints']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      orchestratorVersion: (() { final guardedValue = map['orchestratorVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osDiskSizeGb: (() { final guardedValue = map['osDiskSizeGb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      osDiskType: (() { final guardedValue = map['osDiskType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proximityPlacementGroupId: (() { final guardedValue = map['proximityPlacementGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      spotMaxPrice: (() { final guardedValue = map['spotMaxPrice']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      upgradeSettings: (() { final guardedValue = map['upgradeSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterNodePoolUpgradeSetting>(guardedValue, (value) => GetClusterNodePoolUpgradeSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vnetSubnetId: (() { final guardedValue = map['vnetSubnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
