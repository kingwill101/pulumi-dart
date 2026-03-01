// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_node_pool_autoscaling.dart';
import 'azure_node_pool_config.dart';
import 'azure_node_pool_management.dart';
import 'azure_node_pool_max_pods_constraint.dart';

/// Input properties used for looking up and filtering AzureNodePool resources.
class AzureNodePoolState {
  /// Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Autoscaler configuration for this node pool.
  final pulumi.Input<AzureNodePoolAutoscaling>? autoscaling;
  /// Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`.
  final pulumi.Input<String>? azureAvailabilityZone;
  /// The azureCluster for the resource
  final pulumi.Input<String>? cluster;
  /// The node configuration of the node pool.
  final pulumi.Input<AzureNodePoolConfig>? config;
  /// Output only. The time at which this node pool was created.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// The Management configuration for this node pool.
  final pulumi.Input<AzureNodePoolManagement>? management;
  /// The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  final pulumi.Input<AzureNodePoolMaxPodsConstraint>? maxPodsConstraint;
  /// The name of this resource.
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// Output only. If set, there are currently pending changes to the node pool.
  final pulumi.Input<bool>? reconciling;
  /// Output only. The current state of the node pool. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  final pulumi.Input<String>? state;
  /// The ARM ID of the subnet where the node pool VMs run. Make sure it's a subnet under the virtual network in the cluster configuration.
  final pulumi.Input<String>? subnetId;
  /// Output only. A globally unique identifier for the node pool.
  final pulumi.Input<String>? uid;
  /// Output only. The time at which this node pool was last updated.
  final pulumi.Input<String>? updateTime;
  /// The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.
  final pulumi.Input<String>? version;

  /// Creates a new [AzureNodePoolState].
  /// [annotations] Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [autoscaling] Autoscaler configuration for this node pool.
  /// [azureAvailabilityZone] Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`.
  /// [cluster] The azureCluster for the resource
  /// [config] The node configuration of the node pool.
  /// [createTime] Output only. The time at which this node pool was created.
  /// [effectiveAnnotations] Optional.
  /// [etag] Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [location] The location for the resource
  /// [management] The Management configuration for this node pool.
  /// [maxPodsConstraint] The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.
  /// [name] The name of this resource.
  /// [project] The project for the resource
  /// [reconciling] Output only. If set, there are currently pending changes to the node pool.
  /// [state] Output only. The current state of the node pool. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  /// [subnetId] The ARM ID of the subnet where the node pool VMs run. Make sure it's a subnet under the virtual network in the cluster configuration.
  /// [uid] Output only. A globally unique identifier for the node pool.
  /// [updateTime] Output only. The time at which this node pool was last updated.
  /// [version] The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.
  AzureNodePoolState({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<AzureNodePoolAutoscaling>? autoscaling,
    pulumi.Output<String>? azureAvailabilityZone,
    pulumi.Output<String>? cluster,
    pulumi.Output<AzureNodePoolConfig>? config,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<AzureNodePoolManagement>? management,
    pulumi.Output<AzureNodePoolMaxPodsConstraint>? maxPodsConstraint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<String>? subnetId,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? version,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      autoscaling = pulumi.Input.asOptionalInput<AzureNodePoolAutoscaling>(autoscaling),
      azureAvailabilityZone = pulumi.Input.asOptionalInput<String>(azureAvailabilityZone),
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      config = pulumi.Input.asOptionalInput<AzureNodePoolConfig>(config),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      management = pulumi.Input.asOptionalInput<AzureNodePoolManagement>(management),
      maxPodsConstraint = pulumi.Input.asOptionalInput<AzureNodePoolMaxPodsConstraint>(maxPodsConstraint),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'autoscaling': ?pulumi.Input.mapOptionalInputValue<AzureNodePoolAutoscaling, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'azureAvailabilityZone': ?azureAvailabilityZone,
      'cluster': ?cluster,
      'config': ?pulumi.Input.mapOptionalInputValue<AzureNodePoolConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createTime': ?createTime,
      'effectiveAnnotations': ?effectiveAnnotations,
      'etag': ?etag,
      'location': ?location,
      'management': ?pulumi.Input.mapOptionalInputValue<AzureNodePoolManagement, Map<String, dynamic>>(management, (value) => value.toMap()),
      'maxPodsConstraint': ?pulumi.Input.mapOptionalInputValue<AzureNodePoolMaxPodsConstraint, Map<String, dynamic>>(maxPodsConstraint, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'reconciling': ?reconciling,
      'state': ?state,
      'subnetId': ?subnetId,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory AzureNodePoolState.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolState(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      autoscaling: map['autoscaling'] == null ? null : pulumi.Output.create<AzureNodePoolAutoscaling>(AzureNodePoolAutoscaling.fromMap((map['autoscaling'] as Map).cast<String, dynamic>())),
      azureAvailabilityZone: map['azureAvailabilityZone'] == null ? null : pulumi.Output.create<String>(map['azureAvailabilityZone'] as String),
      cluster: map['cluster'] == null ? null : pulumi.Output.create<String>(map['cluster'] as String),
      config: map['config'] == null ? null : pulumi.Output.create<AzureNodePoolConfig>(AzureNodePoolConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      management: map['management'] == null ? null : pulumi.Output.create<AzureNodePoolManagement>(AzureNodePoolManagement.fromMap((map['management'] as Map).cast<String, dynamic>())),
      maxPodsConstraint: map['maxPodsConstraint'] == null ? null : pulumi.Output.create<AzureNodePoolMaxPodsConstraint>(AzureNodePoolMaxPodsConstraint.fromMap((map['maxPodsConstraint'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

