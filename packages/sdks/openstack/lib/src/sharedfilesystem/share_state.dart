// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_export_location.dart';

/// Input properties used for looking up and filtering Share resources.
class ShareState {
  /// The map of metadata, assigned on the share, which has been
  /// explicitly and implicitly added.
  final pulumi.Input<Map<String, String>>? allMetadata;
  /// The share availability zone. Changing this creates a
  /// new share.
  final pulumi.Input<String>? availabilityZone;
  /// The human-readable description for the share.
  /// Changing this updates the description of the existing share.
  final pulumi.Input<String>? description;
  /// A list of export locations. For example, when a share server
  /// has more than one network interface, it can have multiple export locations.
  final pulumi.Input<List<ShareExportLocation>>? exportLocations;
  /// Indicates whether a share has replicas or not.
  final pulumi.Input<bool>? hasReplicas;
  /// The share host name.
  final pulumi.Input<String>? host;
  /// The level of visibility for the share. Set to true to make
  /// share public. Set to false to make it private. Default value is false. Changing this
  /// updates the existing share.
  final pulumi.Input<bool>? isPublic;
  /// One or more metadata key and value pairs as a dictionary of
  /// strings.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the share. Changing this updates the name
  /// of the existing share.
  final pulumi.Input<String>? name;
  /// The owner of the Share.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Shared File System
  /// client. A Shared File System client is needed to create a share. Changing
  /// this creates a new share.
  final pulumi.Input<String>? region;
  /// The share replication type.
  final pulumi.Input<String>? replicationType;
  /// The UUID of a share network where the share server exists
  /// or will be created. If `share_network_id` is not set and you provide a `snapshot_id`,
  /// the share_network_id value from the snapshot is used. Changing this creates a new share.
  final pulumi.Input<String>? shareNetworkId;
  /// The share protocol - can either be NFS, CIFS,
  /// CEPHFS, GLUSTERFS, HDFS or MAPRFS. Changing this creates a new share.
  final pulumi.Input<String>? shareProto;
  /// The UUID of the share server.
  final pulumi.Input<String>? shareServerId;
  /// The share type name. If you omit this parameter, the default
  /// share type is used.
  final pulumi.Input<String>? shareType;
  /// The share size, in GBs. The requested share size cannot be greater
  /// than the allowed GB quota. Changing this resizes the existing share.
  final pulumi.Input<int>? size;
  /// The UUID of the share's base snapshot. Changing this creates
  /// a new share.
  final pulumi.Input<String>? snapshotId;

  /// Creates a new [ShareState].
  /// [allMetadata] The map of metadata, assigned on the share, which has been
  /// [availabilityZone] The share availability zone. Changing this creates a
  /// [description] The human-readable description for the share.
  /// [exportLocations] A list of export locations. For example, when a share server
  /// [hasReplicas] Indicates whether a share has replicas or not.
  /// [host] The share host name.
  /// [isPublic] The level of visibility for the share. Set to true to make
  /// [metadata] One or more metadata key and value pairs as a dictionary of
  /// [name] The name of the share. Changing this updates the name
  /// [projectId] The owner of the Share.
  /// [region] The region in which to obtain the V2 Shared File System
  /// [replicationType] The share replication type.
  /// [shareNetworkId] The UUID of a share network where the share server exists
  /// [shareProto] The share protocol - can either be NFS, CIFS,
  /// [shareServerId] The UUID of the share server.
  /// [shareType] The share type name. If you omit this parameter, the default
  /// [size] The share size, in GBs. The requested share size cannot be greater
  /// [snapshotId] The UUID of the share's base snapshot. Changing this creates
  ShareState({
    pulumi.Output<Map<String, String>>? allMetadata,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? description,
    pulumi.Output<List<ShareExportLocation>>? exportLocations,
    pulumi.Output<bool>? hasReplicas,
    pulumi.Output<String>? host,
    pulumi.Output<bool>? isPublic,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? replicationType,
    pulumi.Output<String>? shareNetworkId,
    pulumi.Output<String>? shareProto,
    pulumi.Output<String>? shareServerId,
    pulumi.Output<String>? shareType,
    pulumi.Output<int>? size,
    pulumi.Output<String>? snapshotId,
  }) :
      allMetadata = pulumi.Input.asOptionalInput<Map<String, String>>(allMetadata),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      description = pulumi.Input.asOptionalInput<String>(description),
      exportLocations = pulumi.Input.asOptionalInput<List<ShareExportLocation>>(exportLocations),
      hasReplicas = pulumi.Input.asOptionalInput<bool>(hasReplicas),
      host = pulumi.Input.asOptionalInput<String>(host),
      isPublic = pulumi.Input.asOptionalInput<bool>(isPublic),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationType = pulumi.Input.asOptionalInput<String>(replicationType),
      shareNetworkId = pulumi.Input.asOptionalInput<String>(shareNetworkId),
      shareProto = pulumi.Input.asOptionalInput<String>(shareProto),
      shareServerId = pulumi.Input.asOptionalInput<String>(shareServerId),
      shareType = pulumi.Input.asOptionalInput<String>(shareType),
      size = pulumi.Input.asOptionalInput<int>(size),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allMetadata': ?allMetadata,
      'availabilityZone': ?availabilityZone,
      'description': ?description,
      'exportLocations': ?pulumi.Input.mapOptionalInputValue<List<ShareExportLocation>, List<Map<String, dynamic>>>(exportLocations, (value) => pulumi.Input.encodeList<ShareExportLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hasReplicas': ?hasReplicas,
      'host': ?host,
      'isPublic': ?isPublic,
      'metadata': ?metadata,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'replicationType': ?replicationType,
      'shareNetworkId': ?shareNetworkId,
      'shareProto': ?shareProto,
      'shareServerId': ?shareServerId,
      'shareType': ?shareType,
      'size': ?size,
      'snapshotId': ?snapshotId,
    };
  }

  factory ShareState.fromMap(Map<String, dynamic> map) {
    return ShareState(
      allMetadata: map['allMetadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['allMetadata'] as Map).cast<String, String>()),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      exportLocations: map['exportLocations'] == null ? null : pulumi.Output.create<List<ShareExportLocation>>(pulumi.Input.decodeList<ShareExportLocation>(map['exportLocations'], (value) => ShareExportLocation.fromMap((value as Map).cast<String, dynamic>()))),
      hasReplicas: map['hasReplicas'] == null ? null : pulumi.Output.create<bool>(map['hasReplicas'] as bool),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      isPublic: map['isPublic'] == null ? null : pulumi.Output.create<bool>(map['isPublic'] as bool),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationType: map['replicationType'] == null ? null : pulumi.Output.create<String>(map['replicationType'] as String),
      shareNetworkId: map['shareNetworkId'] == null ? null : pulumi.Output.create<String>(map['shareNetworkId'] as String),
      shareProto: map['shareProto'] == null ? null : pulumi.Output.create<String>(map['shareProto'] as String),
      shareServerId: map['shareServerId'] == null ? null : pulumi.Output.create<String>(map['shareServerId'] as String),
      shareType: map['shareType'] == null ? null : pulumi.Output.create<String>(map['shareType'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
    );
  }
}

