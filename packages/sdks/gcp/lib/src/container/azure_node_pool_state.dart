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
    this.annotations,
    this.autoscaling,
    this.azureAvailabilityZone,
    this.cluster,
    this.config,
    this.createTime,
    this.effectiveAnnotations,
    this.etag,
    this.location,
    this.management,
    this.maxPodsConstraint,
    this.name,
    this.project,
    this.reconciling,
    this.state,
    this.subnetId,
    this.uid,
    this.updateTime,
    this.version,
  });

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
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      autoscaling: map['autoscaling'] == null ? null : (AzureNodePoolAutoscaling.fromMap((map['autoscaling']! as Map).cast<String, dynamic>())).input(),
      azureAvailabilityZone: map['azureAvailabilityZone'] == null ? null : (map['azureAvailabilityZone']! as String).input(),
      cluster: map['cluster'] == null ? null : (map['cluster']! as String).input(),
      config: map['config'] == null ? null : (AzureNodePoolConfig.fromMap((map['config']! as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      management: map['management'] == null ? null : (AzureNodePoolManagement.fromMap((map['management']! as Map).cast<String, dynamic>())).input(),
      maxPodsConstraint: map['maxPodsConstraint'] == null ? null : (AzureNodePoolMaxPodsConstraint.fromMap((map['maxPodsConstraint']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling']! as bool).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

