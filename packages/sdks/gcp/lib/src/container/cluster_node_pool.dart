// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_autoscaling.dart';
import 'cluster_node_pool_management.dart';
import 'cluster_node_pool_network_config.dart';
import 'cluster_node_pool_node_config.dart';
import 'cluster_node_pool_node_drain_config.dart';
import 'cluster_node_pool_placement_policy.dart';
import 'cluster_node_pool_queued_provisioning.dart';
import 'cluster_node_pool_upgrade_settings.dart';

class ClusterNodePool {
  /// Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.
  final pulumi.Input<ClusterNodePoolAutoscaling>? autoscaling;
  /// The number of nodes to create in this
  /// cluster's default node pool. In regional or multi-zonal clusters, this is the
  /// number of nodes per zone. Must be set if `node_pool` is not set. If you're using
  /// `gcp.container.NodePool` objects with no default node pool, you'll need to
  /// set this to a value of at least `1`, alongside setting
  /// `remove_default_node_pool` to `true`.
  final pulumi.Input<int>? initialNodeCount;
  /// The resource URLs of the managed instance groups associated with this node pool.
  final pulumi.Input<List<String>>? instanceGroupUrls;
  /// List of instance group URLs which have been assigned to this node pool.
  final pulumi.Input<List<String>>? managedInstanceGroupUrls;
  /// Node management configuration, wherein auto-repair and auto-upgrade is configured.
  final pulumi.Input<ClusterNodePoolManagement>? management;
  /// The maximum number of pods per node in this node pool. Note that this does not work on node pools which are "route-based" - that is, node pools belonging to clusters that do not have IP Aliasing enabled.
  final pulumi.Input<int>? maxPodsPerNode;
  /// The name of the cluster, unique within the project and
  /// location.
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name.
  final pulumi.Input<String>? namePrefix;
  /// Configuration for
  /// [Adding Pod IP address ranges](https://cloud.google.com/kubernetes-engine/docs/how-to/multi-pod-cidr)) to the node pool. Structure is documented below
  final pulumi.Input<ClusterNodePoolNetworkConfig>? networkConfig;
  /// Parameters used in creating the default node pool.
  /// Generally, this field should not be used at the same time as a
  /// `gcp.container.NodePool` or a `node_pool` block; this configuration
  /// manages the default node pool, which isn't recommended to be used.
  /// Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfig>? nodeConfig;
  /// The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling.
  final pulumi.Input<int>? nodeCount;
  /// Node drain configuration for this NodePool.
  final pulumi.Input<List<ClusterNodePoolNodeDrainConfig>>? nodeDrainConfigs;
  /// The list of zones in which the cluster's nodes
  /// are located. Nodes must be in the region of their regional cluster or in the
  /// same region as their cluster's zone for zonal clusters. If this is specified for
  /// a zonal cluster, omit the cluster's zone.
  ///
  /// > A "multi-zonal" cluster is a zonal cluster with at least one additional zone
  /// defined; in a multi-zonal cluster, the cluster master is only present in a
  /// single zone while nodes are present in each of the primary zone and the node
  /// locations. In contrast, in a regional cluster, cluster master nodes are present
  /// in multiple zones in the region. For that reason, regional clusters should be
  /// preferred.
  final pulumi.Input<List<String>>? nodeLocations;
  /// Specifies the node placement policy
  final pulumi.Input<ClusterNodePoolPlacementPolicy>? placementPolicy;
  /// Specifies the configuration of queued provisioning
  final pulumi.Input<ClusterNodePoolQueuedProvisioning>? queuedProvisioning;
  /// Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20.
  final pulumi.Input<ClusterNodePoolUpgradeSettings>? upgradeSettings;
  final pulumi.Input<String>? version;

  /// Creates a new [ClusterNodePool].
  /// [autoscaling] Configuration required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.
  /// [initialNodeCount] The number of nodes to create in this
  /// [instanceGroupUrls] The resource URLs of the managed instance groups associated with this node pool.
  /// [managedInstanceGroupUrls] List of instance group URLs which have been assigned to this node pool.
  /// [management] Node management configuration, wherein auto-repair and auto-upgrade is configured.
  /// [maxPodsPerNode] The maximum number of pods per node in this node pool. Note that this does not work on node pools which are "route-based" - that is, node pools belonging to clusters that do not have IP Aliasing enabled.
  /// [name] The name of the cluster, unique within the project and
  /// [namePrefix] Creates a unique name for the node pool beginning with the specified prefix. Conflicts with name.
  /// [networkConfig] Configuration for
  /// [nodeConfig] Parameters used in creating the default node pool.
  /// [nodeCount] The number of nodes per instance group. This field can be used to update the number of nodes per instance group but should not be used alongside autoscaling.
  /// [nodeDrainConfigs] Node drain configuration for this NodePool.
  /// [nodeLocations] The list of zones in which the cluster's nodes
  /// [placementPolicy] Specifies the node placement policy
  /// [queuedProvisioning] Specifies the configuration of queued provisioning
  /// [upgradeSettings] Specify node upgrade settings to change how many nodes GKE attempts to upgrade at once. The number of nodes upgraded simultaneously is the sum of max_surge and max_unavailable. The maximum number of nodes upgraded simultaneously is limited to 20.
  /// [version] Optional.
  ClusterNodePool({
    this.autoscaling,
    this.initialNodeCount,
    this.instanceGroupUrls,
    this.managedInstanceGroupUrls,
    this.management,
    this.maxPodsPerNode,
    this.name,
    this.namePrefix,
    this.networkConfig,
    this.nodeConfig,
    this.nodeCount,
    this.nodeDrainConfigs,
    this.nodeLocations,
    this.placementPolicy,
    this.queuedProvisioning,
    this.upgradeSettings,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaling': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolAutoscaling, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'initialNodeCount': ?initialNodeCount,
      'instanceGroupUrls': ?instanceGroupUrls,
      'managedInstanceGroupUrls': ?managedInstanceGroupUrls,
      'management': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolManagement, Map<String, dynamic>>(management, (value) => value.toMap()),
      'maxPodsPerNode': ?maxPodsPerNode,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'nodeCount': ?nodeCount,
      'nodeDrainConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolNodeDrainConfig>, List<Map<String, dynamic>>>(nodeDrainConfigs, (value) => pulumi.Input.encodeList<ClusterNodePoolNodeDrainConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeLocations': ?nodeLocations,
      'placementPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolPlacementPolicy, Map<String, dynamic>>(placementPolicy, (value) => value.toMap()),
      'queuedProvisioning': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolQueuedProvisioning, Map<String, dynamic>>(queuedProvisioning, (value) => value.toMap()),
      'upgradeSettings': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolUpgradeSettings, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory ClusterNodePool.fromMap(Map<String, dynamic> map) {
    return ClusterNodePool(
      autoscaling: map['autoscaling'] == null ? null : (ClusterNodePoolAutoscaling.fromMap((map['autoscaling']! as Map).cast<String, dynamic>())).input(),
      initialNodeCount: map['initialNodeCount'] == null ? null : (map['initialNodeCount']! as int).input(),
      instanceGroupUrls: map['instanceGroupUrls'] == null ? null : ((map['instanceGroupUrls']! as List).cast<String>()).input(),
      managedInstanceGroupUrls: map['managedInstanceGroupUrls'] == null ? null : ((map['managedInstanceGroupUrls']! as List).cast<String>()).input(),
      management: map['management'] == null ? null : (ClusterNodePoolManagement.fromMap((map['management']! as Map).cast<String, dynamic>())).input(),
      maxPodsPerNode: map['maxPodsPerNode'] == null ? null : (map['maxPodsPerNode']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix']! as String).input(),
      networkConfig: map['networkConfig'] == null ? null : (ClusterNodePoolNetworkConfig.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())).input(),
      nodeConfig: map['nodeConfig'] == null ? null : (ClusterNodePoolNodeConfig.fromMap((map['nodeConfig']! as Map).cast<String, dynamic>())).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount']! as int).input(),
      nodeDrainConfigs: map['nodeDrainConfigs'] == null ? null : (pulumi.Input.decodeList<ClusterNodePoolNodeDrainConfig>(map['nodeDrainConfigs']!, (value) => ClusterNodePoolNodeDrainConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodeLocations: map['nodeLocations'] == null ? null : ((map['nodeLocations']! as List).cast<String>()).input(),
      placementPolicy: map['placementPolicy'] == null ? null : (ClusterNodePoolPlacementPolicy.fromMap((map['placementPolicy']! as Map).cast<String, dynamic>())).input(),
      queuedProvisioning: map['queuedProvisioning'] == null ? null : (ClusterNodePoolQueuedProvisioning.fromMap((map['queuedProvisioning']! as Map).cast<String, dynamic>())).input(),
      upgradeSettings: map['upgradeSettings'] == null ? null : (ClusterNodePoolUpgradeSettings.fromMap((map['upgradeSettings']! as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

