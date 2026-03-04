// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_autoscaling.dart';
import 'node_pool_management.dart';
import 'node_pool_network_config.dart';
import 'node_pool_node_config.dart';
import 'node_pool_node_drain_config.dart';
import 'node_pool_placement_policy.dart';
import 'node_pool_queued_provisioning.dart';
import 'node_pool_upgrade_settings.dart';

/// Input properties used for looking up and filtering NodePool resources.
class NodePoolState {
  /// Configuration required by cluster autoscaler to adjust
  /// the size of the node pool to the current cluster usage. Structure is documented below.
  final pulumi.Input<NodePoolAutoscaling>? autoscaling;

  /// The cluster to create the node pool for. Cluster must be present in `location` provided for clusters. May be specified in the format `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}` or as just the name of the cluster.
  ///
  /// - - -
  final pulumi.Input<String>? cluster;

  /// The initial number of nodes for the pool. In
  /// regional or multi-zonal clusters, this is the number of nodes per zone. Changing
  /// this will force recreation of the resource. WARNING: Resizing your node pool manually
  /// may change this value in your existing cluster, which will trigger destruction
  /// and recreation on the next provider run (to rectify the discrepancy).  If you don't
  /// need this value, don't set it.  If you do need it, you can use a lifecycle block to
  /// ignore subsqeuent changes to this field.
  final pulumi.Input<int>? initialNodeCount;

  /// The resource URLs of the managed instance groups associated with this node pool.
  final pulumi.Input<List<String>>? instanceGroupUrls;

  /// The location (region or zone) of the cluster.
  ///
  /// - - -
  final pulumi.Input<String>? location;

  /// List of instance group URLs which have been assigned to this node pool.
  final pulumi.Input<List<String>>? managedInstanceGroupUrls;

  /// Node management configuration, wherein auto-repair and
  /// auto-upgrade is configured. Structure is documented below.
  final pulumi.Input<NodePoolManagement>? management;

  /// The maximum number of pods per node in this node pool.
  /// Note that this does not work on node pools which are "route-based" - that is, node
  /// pools belonging to clusters that do not have IP Aliasing enabled.
  /// See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr)
  /// for more information.
  final pulumi.Input<int>? maxPodsPerNode;

  /// The name of the node pool. If left blank, the provider will
  /// auto-generate a unique name.
  final pulumi.Input<String>? name;

  /// Creates a unique name for the node pool beginning
  /// with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// The network configuration of the pool. Such as
  /// configuration for [Adding Pod IP address ranges](https://cloud.google.com/kubernetes-engine/docs/how-to/multi-pod-cidr)) to the node pool. Or enabling private nodes. Structure is
  /// documented below
  final pulumi.Input<NodePoolNetworkConfig>? networkConfig;

  /// Parameters used in creating the node pool. See
  /// gcp.container.Cluster for schema.
  final pulumi.Input<NodePoolNodeConfig>? nodeConfig;

  /// The number of nodes per instance group. This field can be used to
  /// update the number of nodes per instance group but should not be used alongside `autoscaling`.
  final pulumi.Input<int>? nodeCount;

  /// The node drain configuration of the pool. Structure is documented below.
  final pulumi.Input<List<NodePoolNodeDrainConfig>>? nodeDrainConfigs;

  /// The list of zones in which the node pool's nodes should be located. Nodes must
  /// be in the region of their regional cluster or in the same region as their
  /// cluster's zone for zonal clusters. If unspecified, the cluster-level
  /// `node_locations` will be used.
  ///
  /// &gt; Note: `node_locations` will not revert to the cluster's default set of zones
  /// upon being unset. You must manually reconcile the list of zones with your
  /// cluster.
  final pulumi.Input<List<String>>? nodeLocations;
  final pulumi.Input<String>? operation;

  /// Specifies a custom placement policy for the
  /// nodes.
  final pulumi.Input<NodePoolPlacementPolicy>? placementPolicy;

  /// The ID of the project in which to create the node pool. If blank,
  /// the provider-configured project will be used.
  final pulumi.Input<String>? project;

  /// Specifies node pool-level settings of queued provisioning.
  /// Structure is documented below.
  ///
  /// &lt;a name="nested_autoscaling"&gt;&lt;/a&gt;The `autoscaling` block supports (either total or per zone limits are required):
  final pulumi.Input<NodePoolQueuedProvisioning>? queuedProvisioning;

  /// Specify node upgrade settings to change how GKE upgrades nodes.
  /// The maximum number of nodes upgraded simultaneously is limited to 20. Structure is documented below.
  final pulumi.Input<NodePoolUpgradeSettings>? upgradeSettings;

  /// The Kubernetes version for the nodes in this pool. Note that if this field
  /// and `auto_upgrade` are both specified, they will fight each other for what the node version should
  /// be, so setting both is highly discouraged. While a fuzzy version can be specified, it's
  /// recommended that you specify explicit versions as the provider will see spurious diffs
  /// when fuzzy versions are used. See the `gcp.container.getEngineVersions` data source's
  /// `version_prefix` field to approximate fuzzy versions in a provider-compatible way.
  final pulumi.Input<String>? version;

  /// Creates a new [NodePoolState].
  /// [autoscaling] Configuration required by cluster autoscaler to adjust
  /// [cluster] The cluster to create the node pool for. Cluster must be present in `location` provided for clusters. May be specified in the format `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}` or as just the name of the cluster.
  /// [initialNodeCount] The initial number of nodes for the pool. In
  /// [instanceGroupUrls] The resource URLs of the managed instance groups associated with this node pool.
  /// [location] The location (region or zone) of the cluster.
  /// [managedInstanceGroupUrls] List of instance group URLs which have been assigned to this node pool.
  /// [management] Node management configuration, wherein auto-repair and
  /// [maxPodsPerNode] The maximum number of pods per node in this node pool.
  /// [name] The name of the node pool. If left blank, the provider will
  /// [namePrefix] Creates a unique name for the node pool beginning
  /// [networkConfig] The network configuration of the pool. Such as
  /// [nodeConfig] Parameters used in creating the node pool. See
  /// [nodeCount] The number of nodes per instance group. This field can be used to
  /// [nodeDrainConfigs] The node drain configuration of the pool. Structure is documented below.
  /// [nodeLocations] The list of zones in which the node pool's nodes should be located. Nodes must
  /// [operation] Optional.
  /// [placementPolicy] Specifies a custom placement policy for the
  /// [project] The ID of the project in which to create the node pool. If blank,
  /// [queuedProvisioning] Specifies node pool-level settings of queued provisioning.
  /// [upgradeSettings] Specify node upgrade settings to change how GKE upgrades nodes.
  /// [version] The Kubernetes version for the nodes in this pool. Note that if this field
  NodePoolState({
    this.autoscaling,
    this.cluster,
    this.initialNodeCount,
    this.instanceGroupUrls,
    this.location,
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
    this.operation,
    this.placementPolicy,
    this.project,
    this.queuedProvisioning,
    this.upgradeSettings,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaling':
          ?pulumi.Input.mapOptionalInputValue<
            NodePoolAutoscaling,
            Map<String, dynamic>
          >(autoscaling, (value) => value.toMap()),
      'cluster': ?cluster,
      'initialNodeCount': ?initialNodeCount,
      'instanceGroupUrls': ?instanceGroupUrls,
      'location': ?location,
      'managedInstanceGroupUrls': ?managedInstanceGroupUrls,
      'management':
          ?pulumi.Input.mapOptionalInputValue<
            NodePoolManagement,
            Map<String, dynamic>
          >(management, (value) => value.toMap()),
      'maxPodsPerNode': ?maxPodsPerNode,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'networkConfig':
          ?pulumi.Input.mapOptionalInputValue<
            NodePoolNetworkConfig,
            Map<String, dynamic>
          >(networkConfig, (value) => value.toMap()),
      'nodeConfig':
          ?pulumi.Input.mapOptionalInputValue<
            NodePoolNodeConfig,
            Map<String, dynamic>
          >(nodeConfig, (value) => value.toMap()),
      'nodeCount': ?nodeCount,
      'nodeDrainConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<NodePoolNodeDrainConfig>,
            List<Map<String, dynamic>>
          >(
            nodeDrainConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  NodePoolNodeDrainConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'nodeLocations': ?nodeLocations,
      'operation': ?operation,
      'placementPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            NodePoolPlacementPolicy,
            Map<String, dynamic>
          >(placementPolicy, (value) => value.toMap()),
      'project': ?project,
      'queuedProvisioning':
          ?pulumi.Input.mapOptionalInputValue<
            NodePoolQueuedProvisioning,
            Map<String, dynamic>
          >(queuedProvisioning, (value) => value.toMap()),
      'upgradeSettings':
          ?pulumi.Input.mapOptionalInputValue<
            NodePoolUpgradeSettings,
            Map<String, dynamic>
          >(upgradeSettings, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory NodePoolState.fromMap(Map<String, dynamic> map) {
    return NodePoolState(
      autoscaling: (() {
        final guardedValue = map['autoscaling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodePoolAutoscaling.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cluster: (() {
        final guardedValue = map['cluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      initialNodeCount: (() {
        final guardedValue = map['initialNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceGroupUrls: (() {
        final guardedValue = map['instanceGroupUrls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedInstanceGroupUrls: (() {
        final guardedValue = map['managedInstanceGroupUrls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      management: (() {
        final guardedValue = map['management'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodePoolManagement.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maxPodsPerNode: (() {
        final guardedValue = map['maxPodsPerNode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkConfig: (() {
        final guardedValue = map['networkConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodePoolNetworkConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nodeConfig: (() {
        final guardedValue = map['nodeConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodePoolNodeConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nodeCount: (() {
        final guardedValue = map['nodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      nodeDrainConfigs: (() {
        final guardedValue = map['nodeDrainConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NodePoolNodeDrainConfig>(
            guardedValue,
            (value) => NodePoolNodeDrainConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      nodeLocations: (() {
        final guardedValue = map['nodeLocations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      operation: (() {
        final guardedValue = map['operation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      placementPolicy: (() {
        final guardedValue = map['placementPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodePoolPlacementPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queuedProvisioning: (() {
        final guardedValue = map['queuedProvisioning'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodePoolQueuedProvisioning.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      upgradeSettings: (() {
        final guardedValue = map['upgradeSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodePoolUpgradeSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
