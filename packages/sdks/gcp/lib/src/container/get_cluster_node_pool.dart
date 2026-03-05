// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_autoscaling.dart';
import 'get_cluster_node_pool_management.dart';
import 'get_cluster_node_pool_network_config.dart';
import 'get_cluster_node_pool_node_config.dart';
import 'get_cluster_node_pool_node_drain_config.dart';
import 'get_cluster_node_pool_placement_policy.dart';
import 'get_cluster_node_pool_queued_provisioning.dart';
import 'get_cluster_node_pool_upgrade_setting.dart';

class GetClusterNodePool {
  /// Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.
  final pulumi.Input<List<GetClusterNodePoolAutoscaling>> autoscalings;
  /// The initial number of nodes for the pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Changing this will force recreation of the resource.
  final pulumi.Input<int> initialNodeCount;
  /// The resource URLs of the managed instance groups associated with this node pool.
  final pulumi.Input<List<String>> instanceGroupUrls;
  /// List of instance group URLs which have been assigned to this node pool.
  final pulumi.Input<List<String>> managedInstanceGroupUrls;
  /// Node management configuration, wherein auto-repair and auto-upgrade is configured.
  final pulumi.Input<List<GetClusterNodePoolManagement>> managements;
  /// The maximum number of pods per node in this node pool. Note that this does not work on node pools which are "route-based" - that is, node pools belonging to clusters that do not have IP Aliasing enabled.
  final pulumi.Input<int> maxPodsPerNode;
  /// The name of the cluster.
  final pulumi.Input<String> name;
  /// Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name.
  final pulumi.Input<String> namePrefix;
  /// Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  final pulumi.Input<List<GetClusterNodePoolNetworkConfig>> networkConfigs;
  /// The configuration of the nodepool
  final pulumi.Input<List<GetClusterNodePoolNodeConfig>> nodeConfigs;
  /// The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling.
  final pulumi.Input<int> nodeCount;
  /// Node drain configuration for this NodePool.
  final pulumi.Input<List<GetClusterNodePoolNodeDrainConfig>> nodeDrainConfigs;
  /// The list of zones in which the node pool's nodes should be located. Nodes must be in the region of their regional cluster or in the same region as their cluster's zone for zonal clusters. If unspecified, the cluster-level node_locations will be used.
  final pulumi.Input<List<String>> nodeLocations;
  /// Specifies the node placement policy
  final pulumi.Input<List<GetClusterNodePoolPlacementPolicy>> placementPolicies;
  /// Specifies the configuration of queued provisioning
  final pulumi.Input<List<GetClusterNodePoolQueuedProvisioning>> queuedProvisionings;
  /// Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20.
  final pulumi.Input<List<GetClusterNodePoolUpgradeSetting>> upgradeSettings;
  final pulumi.Input<String> version;

  /// Creates a new [GetClusterNodePool].
  /// [autoscalings] Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.
  /// [initialNodeCount] The initial number of nodes for the pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Changing this will force recreation of the resource.
  /// [instanceGroupUrls] The resource URLs of the managed instance groups associated with this node pool.
  /// [managedInstanceGroupUrls] List of instance group URLs which have been assigned to this node pool.
  /// [managements] Node management configuration, wherein auto-repair and auto-upgrade is configured.
  /// [maxPodsPerNode] The maximum number of pods per node in this node pool. Note that this does not work on node pools which are "route-based" - that is, node pools belonging to clusters that do not have IP Aliasing enabled.
  /// [name] The name of the cluster.
  /// [namePrefix] Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name.
  /// [networkConfigs] Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  /// [nodeConfigs] The configuration of the nodepool
  /// [nodeCount] The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling.
  /// [nodeDrainConfigs] Node drain configuration for this NodePool.
  /// [nodeLocations] The list of zones in which the node pool's nodes should be located. Nodes must be in the region of their regional cluster or in the same region as their cluster's zone for zonal clusters. If unspecified, the cluster-level node_locations will be used.
  /// [placementPolicies] Specifies the node placement policy
  /// [queuedProvisionings] Specifies the configuration of queued provisioning
  /// [upgradeSettings] Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20.
  /// [version] Required.
  GetClusterNodePool({
    required this.autoscalings,
    required this.initialNodeCount,
    required this.instanceGroupUrls,
    required this.managedInstanceGroupUrls,
    required this.managements,
    required this.maxPodsPerNode,
    required this.name,
    required this.namePrefix,
    required this.networkConfigs,
    required this.nodeConfigs,
    required this.nodeCount,
    required this.nodeDrainConfigs,
    required this.nodeLocations,
    required this.placementPolicies,
    required this.queuedProvisionings,
    required this.upgradeSettings,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalings': pulumi.Input.mapInputValue<List<GetClusterNodePoolAutoscaling>, List<Map<String, dynamic>>>(autoscalings, (value) => pulumi.Input.encodeList<GetClusterNodePoolAutoscaling, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initialNodeCount': initialNodeCount,
      'instanceGroupUrls': instanceGroupUrls,
      'managedInstanceGroupUrls': managedInstanceGroupUrls,
      'managements': pulumi.Input.mapInputValue<List<GetClusterNodePoolManagement>, List<Map<String, dynamic>>>(managements, (value) => pulumi.Input.encodeList<GetClusterNodePoolManagement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxPodsPerNode': maxPodsPerNode,
      'name': name,
      'namePrefix': namePrefix,
      'networkConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNetworkConfig>, List<Map<String, dynamic>>>(networkConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNetworkConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfig>, List<Map<String, dynamic>>>(nodeConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeCount': nodeCount,
      'nodeDrainConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeDrainConfig>, List<Map<String, dynamic>>>(nodeDrainConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeDrainConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeLocations': nodeLocations,
      'placementPolicies': pulumi.Input.mapInputValue<List<GetClusterNodePoolPlacementPolicy>, List<Map<String, dynamic>>>(placementPolicies, (value) => pulumi.Input.encodeList<GetClusterNodePoolPlacementPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queuedProvisionings': pulumi.Input.mapInputValue<List<GetClusterNodePoolQueuedProvisioning>, List<Map<String, dynamic>>>(queuedProvisionings, (value) => pulumi.Input.encodeList<GetClusterNodePoolQueuedProvisioning, Map<String, dynamic>>(value, (value) => value.toMap())),
      'upgradeSettings': pulumi.Input.mapInputValue<List<GetClusterNodePoolUpgradeSetting>, List<Map<String, dynamic>>>(upgradeSettings, (value) => pulumi.Input.encodeList<GetClusterNodePoolUpgradeSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': version,
    };
  }

  factory GetClusterNodePool.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePool(
      autoscalings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolAutoscaling>(map['autoscalings']!, (value) => GetClusterNodePoolAutoscaling.fromMap((value as Map).cast<String, dynamic>()))),
      initialNodeCount: pulumi.Input.fromValue(map['initialNodeCount'] as int),
      instanceGroupUrls: pulumi.Input.fromValue((map['instanceGroupUrls'] as List).cast<String>()),
      managedInstanceGroupUrls: pulumi.Input.fromValue((map['managedInstanceGroupUrls'] as List).cast<String>()),
      managements: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolManagement>(map['managements']!, (value) => GetClusterNodePoolManagement.fromMap((value as Map).cast<String, dynamic>()))),
      maxPodsPerNode: pulumi.Input.fromValue(map['maxPodsPerNode'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      namePrefix: pulumi.Input.fromValue(map['namePrefix'] as String),
      networkConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNetworkConfig>(map['networkConfigs']!, (value) => GetClusterNodePoolNetworkConfig.fromMap((value as Map).cast<String, dynamic>()))),
      nodeConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfig>(map['nodeConfigs']!, (value) => GetClusterNodePoolNodeConfig.fromMap((value as Map).cast<String, dynamic>()))),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      nodeDrainConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeDrainConfig>(map['nodeDrainConfigs']!, (value) => GetClusterNodePoolNodeDrainConfig.fromMap((value as Map).cast<String, dynamic>()))),
      nodeLocations: pulumi.Input.fromValue((map['nodeLocations'] as List).cast<String>()),
      placementPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolPlacementPolicy>(map['placementPolicies']!, (value) => GetClusterNodePoolPlacementPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      queuedProvisionings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolQueuedProvisioning>(map['queuedProvisionings']!, (value) => GetClusterNodePoolQueuedProvisioning.fromMap((value as Map).cast<String, dynamic>()))),
      upgradeSettings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolUpgradeSetting>(map['upgradeSettings']!, (value) => GetClusterNodePoolUpgradeSetting.fromMap((value as Map).cast<String, dynamic>()))),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

