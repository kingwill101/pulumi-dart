// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sharedfilesystem_share_share_args_doc}
/// The set of arguments for Share.
/// {@endtemplate}
/// {@macro pulumi_sharedfilesystem_share_share_args_doc}
class ShareArgs {
  /// The share availability zone. Changing this creates a
  /// new share.
  final pulumi.Input<String>? availabilityZone;
  /// The human-readable description for the share.
  /// Changing this updates the description of the existing share.
  final pulumi.Input<String>? description;
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
  /// The region in which to obtain the V2 Shared File System
  /// client. A Shared File System client is needed to create a share. Changing
  /// this creates a new share.
  final pulumi.Input<String>? region;
  /// The UUID of a share network where the share server exists
  /// or will be created. If `share_network_id` is not set and you provide a `snapshot_id`,
  /// the share_network_id value from the snapshot is used. Changing this creates a new share.
  final pulumi.Input<String>? shareNetworkId;
  /// The share protocol - can either be NFS, CIFS,
  /// CEPHFS, GLUSTERFS, HDFS or MAPRFS. Changing this creates a new share.
  final pulumi.Input<String> shareProto;
  /// The share type name. If you omit this parameter, the default
  /// share type is used.
  final pulumi.Input<String>? shareType;
  /// The share size, in GBs. The requested share size cannot be greater
  /// than the allowed GB quota. Changing this resizes the existing share.
  final pulumi.Input<int> size;
  /// The UUID of the share's base snapshot. Changing this creates
  /// a new share.
  final pulumi.Input<String>? snapshotId;

  /// Creates a new [ShareArgs].
  /// [availabilityZone] The share availability zone. Changing this creates a
  /// [description] The human-readable description for the share.
  /// [isPublic] The level of visibility for the share. Set to true to make
  /// [metadata] One or more metadata key and value pairs as a dictionary of
  /// [name] The name of the share. Changing this updates the name
  /// [region] The region in which to obtain the V2 Shared File System
  /// [shareNetworkId] The UUID of a share network where the share server exists
  /// [shareProto] The share protocol - can either be NFS, CIFS,
  /// [shareType] The share type name. If you omit this parameter, the default
  /// [size] The share size, in GBs. The requested share size cannot be greater
  /// [snapshotId] The UUID of the share's base snapshot. Changing this creates
  ShareArgs({
    this.availabilityZone,
    this.description,
    this.isPublic,
    this.metadata,
    this.name,
    this.region,
    this.shareNetworkId,
    required this.shareProto,
    this.shareType,
    required this.size,
    this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'description': ?description,
      'isPublic': ?isPublic,
      'metadata': ?metadata,
      'name': ?name,
      'region': ?region,
      'shareNetworkId': ?shareNetworkId,
      'shareProto': shareProto,
      'shareType': ?shareType,
      'size': size,
      'snapshotId': ?snapshotId,
    };
  }

  factory ShareArgs.fromMap(Map<String, dynamic> map) {
    return ShareArgs(
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      isPublic: map['isPublic'] == null ? null : (map['isPublic']! as bool).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      shareNetworkId: map['shareNetworkId'] == null ? null : (map['shareNetworkId']! as String).input(),
      shareProto: (map['shareProto'] as String).input(),
      shareType: map['shareType'] == null ? null : (map['shareType']! as String).input(),
      size: (map['size'] as int).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId']! as String).input(),
    );
  }
}

