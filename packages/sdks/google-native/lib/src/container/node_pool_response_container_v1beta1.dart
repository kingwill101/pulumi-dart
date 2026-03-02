// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'best_effort_provisioning_response_container_v1beta1.dart';
import 'max_pods_constraint_response_container_v1beta1.dart';
import 'node_config_response_container_v1beta1.dart';
import 'node_management_response_container_v1beta1.dart';
import 'node_network_config_response_container_v1beta1.dart';
import 'node_pool_autoscaling_response_container_v1beta1.dart';
import 'placement_policy_response_container_v1beta1.dart';
import 'queued_provisioning_response_container_v1beta1.dart';
import 'status_condition_response_container_v1beta1.dart';
import 'update_info_response_container_v1beta1.dart';
import 'upgrade_settings_response_container_v1beta1.dart';

/// NodePool contains the name and configuration for a cluster's node pool. Node pools are a set of nodes (i.e. VM's), with a common configuration and specification, under the control of the cluster master. They may have a set of Kubernetes labels applied to them, which may be used to reference them during pod scheduling. They may also be resized up or down, to accommodate the workload.
class NodePoolResponseContainerV1beta1 {
  /// Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  final pulumi.Input<NodePoolAutoscalingResponseContainerV1beta1> autoscaling;
  /// Enable best effort provisioning for nodes
  final pulumi.Input<BestEffortProvisioningResponseContainerV1beta1> bestEffortProvisioning;
  /// Which conditions caused the current node pool state.
  final pulumi.Input<List<StatusConditionResponseContainerV1beta1>> conditions;
  /// The node configuration of the pool.
  final pulumi.Input<NodeConfigResponseContainerV1beta1> config;
  /// This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String> etag;
  /// The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  final pulumi.Input<int> initialNodeCount;
  /// [Output only] The resource URLs of the [managed instance groups](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with this node pool. During the node pool blue-green upgrade operation, the URLs contain both blue and green resources.
  final pulumi.Input<List<String>> instanceGroupUrls;
  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  final pulumi.Input<List<String>> locations;
  /// NodeManagement configuration for this NodePool.
  final pulumi.Input<NodeManagementResponseContainerV1beta1> management;
  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final pulumi.Input<MaxPodsConstraintResponseContainerV1beta1> maxPodsConstraint;
  /// The name of the node pool.
  final pulumi.Input<String> name;
  /// Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  final pulumi.Input<NodeNetworkConfigResponseContainerV1beta1> networkConfig;
  /// Specifies the node placement policy.
  final pulumi.Input<PlacementPolicyResponseContainerV1beta1> placementPolicy;
  /// [Output only] The pod CIDR block size per node in this node pool.
  final pulumi.Input<int> podIpv4CidrSize;
  /// Specifies the configuration of queued provisioning.
  final pulumi.Input<QueuedProvisioningResponseContainerV1beta1> queuedProvisioning;
  /// [Output only] Server-defined URL for the resource.
  final pulumi.Input<String> selfLink;
  /// [Output only] The status of the nodes in this pool instance.
  final pulumi.Input<String> status;
  /// [Output only] Deprecated. Use conditions instead. Additional information about the current status of this node pool instance, if available.
  final pulumi.Input<String> statusMessage;
  /// [Output only] Update info contains relevant information during a node pool update.
  final pulumi.Input<UpdateInfoResponseContainerV1beta1> updateInfo;
  /// Upgrade settings control disruption and speed of the upgrade.
  final pulumi.Input<UpgradeSettingsResponseContainerV1beta1> upgradeSettings;
  /// The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  final pulumi.Input<String> version;

  /// Creates a new [NodePoolResponseContainerV1beta1].
  /// [autoscaling] Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  /// [bestEffortProvisioning] Enable best effort provisioning for nodes
  /// [conditions] Which conditions caused the current node pool state.
  /// [config] The node configuration of the pool.
  /// [etag] This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  /// [initialNodeCount] The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  /// [instanceGroupUrls] [Output only] The resource URLs of the [managed instance groups](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with this node pool. During the node pool blue-green upgrade operation, the URLs contain both blue and green resources.
  /// [locations] The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  /// [management] NodeManagement configuration for this NodePool.
  /// [maxPodsConstraint] The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  /// [name] The name of the node pool.
  /// [networkConfig] Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  /// [placementPolicy] Specifies the node placement policy.
  /// [podIpv4CidrSize] [Output only] The pod CIDR block size per node in this node pool.
  /// [queuedProvisioning] Specifies the configuration of queued provisioning.
  /// [selfLink] [Output only] Server-defined URL for the resource.
  /// [status] [Output only] The status of the nodes in this pool instance.
  /// [statusMessage] [Output only] Deprecated. Use conditions instead. Additional information about the current status of this node pool instance, if available.
  /// [updateInfo] [Output only] Update info contains relevant information during a node pool update.
  /// [upgradeSettings] Upgrade settings control disruption and speed of the upgrade.
  /// [version] The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  NodePoolResponseContainerV1beta1({
    required this.autoscaling,
    required this.bestEffortProvisioning,
    required this.conditions,
    required this.config,
    required this.etag,
    required this.initialNodeCount,
    required this.instanceGroupUrls,
    required this.locations,
    required this.management,
    required this.maxPodsConstraint,
    required this.name,
    required this.networkConfig,
    required this.placementPolicy,
    required this.podIpv4CidrSize,
    required this.queuedProvisioning,
    required this.selfLink,
    required this.status,
    required this.statusMessage,
    required this.updateInfo,
    required this.upgradeSettings,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaling': pulumi.Input.mapInputValue<NodePoolAutoscalingResponseContainerV1beta1, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'bestEffortProvisioning': pulumi.Input.mapInputValue<BestEffortProvisioningResponseContainerV1beta1, Map<String, dynamic>>(bestEffortProvisioning, (value) => value.toMap()),
      'conditions': pulumi.Input.mapInputValue<List<StatusConditionResponseContainerV1beta1>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<StatusConditionResponseContainerV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'config': pulumi.Input.mapInputValue<NodeConfigResponseContainerV1beta1, Map<String, dynamic>>(config, (value) => value.toMap()),
      'etag': etag,
      'initialNodeCount': initialNodeCount,
      'instanceGroupUrls': instanceGroupUrls,
      'locations': locations,
      'management': pulumi.Input.mapInputValue<NodeManagementResponseContainerV1beta1, Map<String, dynamic>>(management, (value) => value.toMap()),
      'maxPodsConstraint': pulumi.Input.mapInputValue<MaxPodsConstraintResponseContainerV1beta1, Map<String, dynamic>>(maxPodsConstraint, (value) => value.toMap()),
      'name': name,
      'networkConfig': pulumi.Input.mapInputValue<NodeNetworkConfigResponseContainerV1beta1, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'placementPolicy': pulumi.Input.mapInputValue<PlacementPolicyResponseContainerV1beta1, Map<String, dynamic>>(placementPolicy, (value) => value.toMap()),
      'podIpv4CidrSize': podIpv4CidrSize,
      'queuedProvisioning': pulumi.Input.mapInputValue<QueuedProvisioningResponseContainerV1beta1, Map<String, dynamic>>(queuedProvisioning, (value) => value.toMap()),
      'selfLink': selfLink,
      'status': status,
      'statusMessage': statusMessage,
      'updateInfo': pulumi.Input.mapInputValue<UpdateInfoResponseContainerV1beta1, Map<String, dynamic>>(updateInfo, (value) => value.toMap()),
      'upgradeSettings': pulumi.Input.mapInputValue<UpgradeSettingsResponseContainerV1beta1, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'version': version,
    };
  }

  factory NodePoolResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodePoolResponseContainerV1beta1(
      autoscaling: (NodePoolAutoscalingResponseContainerV1beta1.fromMap((map['autoscaling'] as Map).cast<String, dynamic>())).input(),
      bestEffortProvisioning: (BestEffortProvisioningResponseContainerV1beta1.fromMap((map['bestEffortProvisioning'] as Map).cast<String, dynamic>())).input(),
      conditions: (pulumi.Input.decodeList<StatusConditionResponseContainerV1beta1>(map['conditions'], (value) => StatusConditionResponseContainerV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      config: (NodeConfigResponseContainerV1beta1.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      etag: (map['etag'] as String).input(),
      initialNodeCount: (map['initialNodeCount'] as int).input(),
      instanceGroupUrls: ((map['instanceGroupUrls'] as List).cast<String>()).input(),
      locations: ((map['locations'] as List).cast<String>()).input(),
      management: (NodeManagementResponseContainerV1beta1.fromMap((map['management'] as Map).cast<String, dynamic>())).input(),
      maxPodsConstraint: (MaxPodsConstraintResponseContainerV1beta1.fromMap((map['maxPodsConstraint'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      networkConfig: (NodeNetworkConfigResponseContainerV1beta1.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())).input(),
      placementPolicy: (PlacementPolicyResponseContainerV1beta1.fromMap((map['placementPolicy'] as Map).cast<String, dynamic>())).input(),
      podIpv4CidrSize: (map['podIpv4CidrSize'] as int).input(),
      queuedProvisioning: (QueuedProvisioningResponseContainerV1beta1.fromMap((map['queuedProvisioning'] as Map).cast<String, dynamic>())).input(),
      selfLink: (map['selfLink'] as String).input(),
      status: (map['status'] as String).input(),
      statusMessage: (map['statusMessage'] as String).input(),
      updateInfo: (UpdateInfoResponseContainerV1beta1.fromMap((map['updateInfo'] as Map).cast<String, dynamic>())).input(),
      upgradeSettings: (UpgradeSettingsResponseContainerV1beta1.fromMap((map['upgradeSettings'] as Map).cast<String, dynamic>())).input(),
      version: (map['version'] as String).input(),
    );
  }
}

