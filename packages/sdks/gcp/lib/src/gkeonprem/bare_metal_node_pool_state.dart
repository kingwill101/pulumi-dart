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
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? bareMetalCluster,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deleteTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<BareMetalNodePoolNodePoolConfig>? nodePoolConfig,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<List<BareMetalNodePoolStatus>>? statuses,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      bareMetalCluster = pulumi.Input.asOptionalInput<String>(bareMetalCluster),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deleteTime = pulumi.Input.asOptionalInput<String>(deleteTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodePoolConfig = pulumi.Input.asOptionalInput<BareMetalNodePoolNodePoolConfig>(nodePoolConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      statuses = pulumi.Input.asOptionalInput<List<BareMetalNodePoolStatus>>(statuses),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      bareMetalCluster: map['bareMetalCluster'] == null ? null : pulumi.Output.create<String>(map['bareMetalCluster'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deleteTime: map['deleteTime'] == null ? null : pulumi.Output.create<String>(map['deleteTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodePoolConfig: map['nodePoolConfig'] == null ? null : pulumi.Output.create<BareMetalNodePoolNodePoolConfig>(BareMetalNodePoolNodePoolConfig.fromMap((map['nodePoolConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      statuses: map['statuses'] == null ? null : pulumi.Output.create<List<BareMetalNodePoolStatus>>(pulumi.Input.decodeList<BareMetalNodePoolStatus>(map['statuses'], (value) => BareMetalNodePoolStatus.fromMap((value as Map).cast<String, dynamic>()))),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

