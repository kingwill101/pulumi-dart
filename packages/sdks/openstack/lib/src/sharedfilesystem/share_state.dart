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
    this.allMetadata,
    this.availabilityZone,
    this.description,
    this.exportLocations,
    this.hasReplicas,
    this.host,
    this.isPublic,
    this.metadata,
    this.name,
    this.projectId,
    this.region,
    this.replicationType,
    this.shareNetworkId,
    this.shareProto,
    this.shareServerId,
    this.shareType,
    this.size,
    this.snapshotId,
  });

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
      allMetadata: map['allMetadata'] == null ? null : ((map['allMetadata'] as Map).cast<String, String>()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      exportLocations: map['exportLocations'] == null ? null : (pulumi.Input.decodeList<ShareExportLocation>(map['exportLocations'], (value) => ShareExportLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hasReplicas: map['hasReplicas'] == null ? null : (map['hasReplicas'] as bool).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      isPublic: map['isPublic'] == null ? null : (map['isPublic'] as bool).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      replicationType: map['replicationType'] == null ? null : (map['replicationType'] as String).input(),
      shareNetworkId: map['shareNetworkId'] == null ? null : (map['shareNetworkId'] as String).input(),
      shareProto: map['shareProto'] == null ? null : (map['shareProto'] as String).input(),
      shareServerId: map['shareServerId'] == null ? null : (map['shareServerId'] as String).input(),
      shareType: map['shareType'] == null ? null : (map['shareType'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId'] as String).input(),
    );
  }
}

