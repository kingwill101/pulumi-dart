// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_node_pool_node_pool_config.dart';
import 'bare_metal_node_pool_status.dart';

/// Input properties used for looking up and filtering BareMetalNodePool resources.
class BareMetalNodePoolState {
  /// Annotations on the Bare Metal Node Pool.
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
  /// The cluster this node pool belongs to.
  final pulumi.Input<String>? bareMetalCluster;
  /// The time the cluster was created, in RFC3339 text format.
  final pulumi.Input<String>? createTime;
  /// The time the cluster was deleted, in RFC3339 text format.
  final pulumi.Input<String>? deleteTime;
  /// The display name for the Bare Metal Node Pool.
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
  /// The bare metal node pool name.
  final pulumi.Input<String>? name;
  /// Node pool configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalNodePoolNodePoolConfig>? nodePoolConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// If set, there are currently changes in flight to the Bare Metal User Cluster.
  final pulumi.Input<bool>? reconciling;
  /// (Output)
  /// The lifecycle state of the condition.
  final pulumi.Input<String>? state;
  /// Specifies detailed node pool status.
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalNodePoolStatus>>? statuses;
  /// The unique identifier of the Bare Metal Node Pool.
  final pulumi.Input<String>? uid;
  /// The time the cluster was last updated, in RFC3339 text format.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [BareMetalNodePoolState].
  /// [annotations] Annotations on the Bare Metal Node Pool.
  /// [bareMetalCluster] The cluster this node pool belongs to.
  /// [createTime] The time the cluster was created, in RFC3339 text format.
  /// [deleteTime] The time the cluster was deleted, in RFC3339 text format.
  /// [displayName] The display name for the Bare Metal Node Pool.
  /// [effectiveAnnotations] Optional.
  /// [etag] This checksum is computed by the server based on the value of other
  /// [location] The location of the resource.
  /// [name] The bare metal node pool name.
  /// [nodePoolConfig] Node pool configuration.
  /// [project] The ID of the project in which the resource belongs.
  /// [reconciling] If set, there are currently changes in flight to the Bare Metal User Cluster.
  /// [state] (Output)
  /// [statuses] Specifies detailed node pool status.
  /// [uid] The unique identifier of the Bare Metal Node Pool.
  /// [updateTime] The time the cluster was last updated, in RFC3339 text format.
  BareMetalNodePoolState({
    this.annotations,
    this.bareMetalCluster,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.effectiveAnnotations,
    this.etag,
    this.location,
    this.name,
    this.nodePoolConfig,
    this.project,
    this.reconciling,
    this.state,
    this.statuses,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'bareMetalCluster': ?bareMetalCluster,
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'effectiveAnnotations': ?effectiveAnnotations,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'nodePoolConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalNodePoolNodePoolConfig, Map<String, dynamic>>(nodePoolConfig, (value) => value.toMap()),
      'project': ?project,
      'reconciling': ?reconciling,
      'state': ?state,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<BareMetalNodePoolStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<BareMetalNodePoolStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory BareMetalNodePoolState.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolState(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      bareMetalCluster: map['bareMetalCluster'] == null ? null : (map['bareMetalCluster']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deleteTime: map['deleteTime'] == null ? null : (map['deleteTime']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nodePoolConfig: map['nodePoolConfig'] == null ? null : (BareMetalNodePoolNodePoolConfig.fromMap((map['nodePoolConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling']! as bool).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<BareMetalNodePoolStatus>(map['statuses']!, (value) => BareMetalNodePoolStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

