// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_node_pool_config.dart';
import 'vmware_node_pool_node_pool_autoscaling.dart';
import 'vmware_node_pool_status.dart';

/// Input properties used for looking up and filtering VMwareNodePool resources.
class VMwareNodePoolState {
  /// Annotations on the node Pool.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The node configuration of the node pool.
  /// Structure is documented below.
  final pulumi.Input<VMwareNodePoolConfig>? config;
  /// The time the cluster was created, in RFC3339 text format.
  final pulumi.Input<String>? createTime;
  /// The time the cluster was deleted, in RFC3339 text format.
  final pulumi.Input<String>? deleteTime;
  /// The display name for the node pool.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  final pulumi.Input<String>? etag;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The vmware node pool name.
  final pulumi.Input<String>? name;
  /// Node Pool autoscaling config for the node pool.
  /// Structure is documented below.
  final pulumi.Input<VMwareNodePoolNodePoolAutoscaling>? nodePoolAutoscaling;
  /// Anthos version for the node pool. Defaults to the user cluster version.
  final pulumi.Input<String>? onPremVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// If set, there are currently changes in flight to the node pool.
  final pulumi.Input<bool>? reconciling;
  /// (Output)
  /// The lifecycle state of the condition.
  final pulumi.Input<String>? state;
  /// ResourceStatus representing detailed cluster state.
  /// Structure is documented below.
  final pulumi.Input<List<VMwareNodePoolStatus>>? statuses;
  /// The unique identifier of the node pool.
  final pulumi.Input<String>? uid;
  /// The time the cluster was last updated, in RFC3339 text format.
  final pulumi.Input<String>? updateTime;
  /// The cluster this node pool belongs to.
  final pulumi.Input<String>? vmwareCluster;

  /// Creates a new [VMwareNodePoolState].
  /// [annotations] Annotations on the node Pool.
  /// [config] The node configuration of the node pool.
  /// [createTime] The time the cluster was created, in RFC3339 text format.
  /// [deleteTime] The time the cluster was deleted, in RFC3339 text format.
  /// [displayName] The display name for the node pool.
  /// [effectiveAnnotations] Optional.
  /// [etag] This checksum is computed by the server based on the value of other
  /// [location] The location of the resource.
  /// [name] The vmware node pool name.
  /// [nodePoolAutoscaling] Node Pool autoscaling config for the node pool.
  /// [onPremVersion] Anthos version for the node pool. Defaults to the user cluster version.
  /// [project] The ID of the project in which the resource belongs.
  /// [reconciling] If set, there are currently changes in flight to the node pool.
  /// [state] (Output)
  /// [statuses] ResourceStatus representing detailed cluster state.
  /// [uid] The unique identifier of the node pool.
  /// [updateTime] The time the cluster was last updated, in RFC3339 text format.
  /// [vmwareCluster] The cluster this node pool belongs to.
  VMwareNodePoolState({
    this.annotations,
    this.config,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.effectiveAnnotations,
    this.etag,
    this.location,
    this.name,
    this.nodePoolAutoscaling,
    this.onPremVersion,
    this.project,
    this.reconciling,
    this.state,
    this.statuses,
    this.uid,
    this.updateTime,
    this.vmwareCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'config': ?pulumi.Input.mapOptionalInputValue<VMwareNodePoolConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'nodePoolAutoscaling': ?pulumi.Input.mapOptionalInputValue<VMwareNodePoolNodePoolAutoscaling, Map<String, dynamic>>(nodePoolAutoscaling, (value) => value.toMap()),
      'onPremVersion': ?onPremVersion,
      'project': ?project,
      'reconciling': ?reconciling,
      'state': ?state,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<VMwareNodePoolStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<VMwareNodePoolStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vmwareCluster': ?vmwareCluster,
    };
  }

  factory VMwareNodePoolState.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolState(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      config: map['config'] == null ? null : (VMwareNodePoolConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations'] as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nodePoolAutoscaling: map['nodePoolAutoscaling'] == null ? null : (VMwareNodePoolNodePoolAutoscaling.fromMap((map['nodePoolAutoscaling'] as Map).cast<String, dynamic>())).input(),
      onPremVersion: map['onPremVersion'] == null ? null : (map['onPremVersion'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling'] as bool).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<VMwareNodePoolStatus>(map['statuses'], (value) => VMwareNodePoolStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
      vmwareCluster: map['vmwareCluster'] == null ? null : (map['vmwareCluster'] as String).input(),
    );
  }
}

