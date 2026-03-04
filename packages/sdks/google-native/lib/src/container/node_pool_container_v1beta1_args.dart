// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'best_effort_provisioning_container_v1beta1.dart';
import 'max_pods_constraint_container_v1beta1.dart';
import 'node_config_container_v1beta1.dart';
import 'node_management_container_v1beta1.dart';
import 'node_network_config_container_v1beta1.dart';
import 'node_pool_autoscaling_container_v1beta1.dart';
import 'placement_policy_container_v1beta1.dart';
import 'queued_provisioning_container_v1beta1.dart';
import 'status_condition_container_v1beta1.dart';
import 'upgrade_settings_container_v1beta1.dart';

/// {@template pulumi_container_v1beta1_node_pool_container_v1beta1_args_doc}
/// The set of arguments for NodePool.
/// {@endtemplate}
/// {@macro pulumi_container_v1beta1_node_pool_container_v1beta1_args_doc}
class NodePoolContainerV1beta1Args {
  /// Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  final pulumi.Input<NodePoolAutoscalingContainerV1beta1>? autoscaling;

  /// Enable best effort provisioning for nodes
  final pulumi.Input<BestEffortProvisioningContainerV1beta1>?
  bestEffortProvisioning;

  /// Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field.
  final pulumi.Input<String> clusterId;

  /// Which conditions caused the current node pool state.
  final pulumi.Input<List<StatusConditionContainerV1beta1>>? conditions;

  /// The node configuration of the pool.
  final pulumi.Input<NodeConfigContainerV1beta1>? config;

  /// This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  final pulumi.Input<int>? initialNodeCount;
  final pulumi.Input<String>? location;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  final pulumi.Input<List<String>>? locations;

  /// NodeManagement configuration for this NodePool.
  final pulumi.Input<NodeManagementContainerV1beta1>? management;

  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final pulumi.Input<MaxPodsConstraintContainerV1beta1>? maxPodsConstraint;

  /// The name of the node pool.
  final pulumi.Input<String>? name;

  /// Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  final pulumi.Input<NodeNetworkConfigContainerV1beta1>? networkConfig;

  /// The parent (project, location, cluster name) where the node pool will be created. Specified in the format `projects/*/locations/*/clusters/*`.
  final pulumi.Input<String>? parent;

  /// Specifies the node placement policy.
  final pulumi.Input<PlacementPolicyContainerV1beta1>? placementPolicy;

  /// Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.
  final pulumi.Input<String>? project;

  /// Specifies the configuration of queued provisioning.
  final pulumi.Input<QueuedProvisioningContainerV1beta1>? queuedProvisioning;

  /// Upgrade settings control disruption and speed of the upgrade.
  final pulumi.Input<UpgradeSettingsContainerV1beta1>? upgradeSettings;

  /// The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  final pulumi.Input<String>? version;

  /// Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.
  final pulumi.Input<String>? zone;

  /// Creates a new [NodePoolContainerV1beta1Args].
  /// [autoscaling] Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.
  /// [bestEffortProvisioning] Enable best effort provisioning for nodes
  /// [clusterId] Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field.
  /// [conditions] Which conditions caused the current node pool state.
  /// [config] The node configuration of the pool.
  /// [etag] This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  /// [initialNodeCount] The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.
  /// [location] Optional.
  /// [locations] The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.
  /// [management] NodeManagement configuration for this NodePool.
  /// [maxPodsConstraint] The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  /// [name] The name of the node pool.
  /// [networkConfig] Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.
  /// [parent] The parent (project, location, cluster name) where the node pool will be created. Specified in the format `projects/*/locations/*/clusters/*`.
  /// [placementPolicy] Specifies the node placement policy.
  /// [project] Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.
  /// [queuedProvisioning] Specifies the configuration of queued provisioning.
  /// [upgradeSettings] Upgrade settings control disruption and speed of the upgrade.
  /// [version] The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as described [here](https://cloud.google.com/kubernetes-engine/versioning#specifying_node_version).
  /// [zone] Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.
  NodePoolContainerV1beta1Args({
    this.autoscaling,
    this.bestEffortProvisioning,
    required this.clusterId,
    this.conditions,
    this.config,
    this.etag,
    this.initialNodeCount,
    this.location,
    this.locations,
    this.management,
    this.maxPodsConstraint,
    this.name,
    this.networkConfig,
    this.parent,
    this.placementPolicy,
    this.project,
    this.queuedProvisioning,
    this.upgradeSettings,
    this.version,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaling':
          ?pulumi.Input.mapOptionalInputValue<
            NodePoolAutoscalingContainerV1beta1,
            Map<String, dynamic>
          >(autoscaling, (value) => value.toMap()),
      'bestEffortProvisioning':
          ?pulumi.Input.mapOptionalInputValue<
            BestEffortProvisioningContainerV1beta1,
            Map<String, dynamic>
          >(bestEffortProvisioning, (value) => value.toMap()),
      'clusterId': clusterId,
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<StatusConditionContainerV1beta1>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<
                  StatusConditionContainerV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'config':
          ?pulumi.Input.mapOptionalInputValue<
            NodeConfigContainerV1beta1,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'etag': ?etag,
      'initialNodeCount': ?initialNodeCount,
      'location': ?location,
      'locations': ?locations,
      'management':
          ?pulumi.Input.mapOptionalInputValue<
            NodeManagementContainerV1beta1,
            Map<String, dynamic>
          >(management, (value) => value.toMap()),
      'maxPodsConstraint':
          ?pulumi.Input.mapOptionalInputValue<
            MaxPodsConstraintContainerV1beta1,
            Map<String, dynamic>
          >(maxPodsConstraint, (value) => value.toMap()),
      'name': ?name,
      'networkConfig':
          ?pulumi.Input.mapOptionalInputValue<
            NodeNetworkConfigContainerV1beta1,
            Map<String, dynamic>
          >(networkConfig, (value) => value.toMap()),
      'parent': ?parent,
      'placementPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            PlacementPolicyContainerV1beta1,
            Map<String, dynamic>
          >(placementPolicy, (value) => value.toMap()),
      'project': ?project,
      'queuedProvisioning':
          ?pulumi.Input.mapOptionalInputValue<
            QueuedProvisioningContainerV1beta1,
            Map<String, dynamic>
          >(queuedProvisioning, (value) => value.toMap()),
      'upgradeSettings':
          ?pulumi.Input.mapOptionalInputValue<
            UpgradeSettingsContainerV1beta1,
            Map<String, dynamic>
          >(upgradeSettings, (value) => value.toMap()),
      'version': ?version,
      'zone': ?zone,
    };
  }

  factory NodePoolContainerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return NodePoolContainerV1beta1Args(
      autoscaling: (() {
        final guardedValue = map['autoscaling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodePoolAutoscalingContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      bestEffortProvisioning: (() {
        final guardedValue = map['bestEffortProvisioning'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BestEffortProvisioningContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<StatusConditionContainerV1beta1>(
            guardedValue,
            (value) => StatusConditionContainerV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      config: (() {
        final guardedValue = map['config'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeConfigContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      initialNodeCount: (() {
        final guardedValue = map['initialNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      locations: (() {
        final guardedValue = map['locations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      management: (() {
        final guardedValue = map['management'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeManagementContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maxPodsConstraint: (() {
        final guardedValue = map['maxPodsConstraint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MaxPodsConstraintContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkConfig: (() {
        final guardedValue = map['networkConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeNetworkConfigContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      placementPolicy: (() {
        final guardedValue = map['placementPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PlacementPolicyContainerV1beta1.fromMap(
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
          QueuedProvisioningContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      upgradeSettings: (() {
        final guardedValue = map['upgradeSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UpgradeSettingsContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
