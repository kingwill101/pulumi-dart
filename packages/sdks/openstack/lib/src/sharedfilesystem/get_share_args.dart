// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sharedfilesystem_get_share_get_share_args_doc}
/// Arguments for getShare.
/// {@endtemplate}
/// {@macro pulumi_sharedfilesystem_get_share_get_share_args_doc}
class GetShareArgs {
  /// The human-readable description for the share.
  final pulumi.Input<String>? description;
  /// The export location path of the share. Available
  /// since Manila API version 2.35.
  final pulumi.Input<String>? exportLocationPath;
  /// The level of visibility for the share.
  /// length.
  final pulumi.Input<bool>? isPublic;
  /// One or more metadata key and value pairs as a dictionary of
  /// strings.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the share.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 Shared File System
  /// client. A Shared File System client is needed to read a share. If omitted,
  /// the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The UUID of the share's share network.
  final pulumi.Input<String>? shareNetworkId;
  /// The UUID of the share's base snapshot.
  final pulumi.Input<String>? snapshotId;
  /// A share status filter. A valid value is `creating`,
  /// `error`, `available`, `deleting`, `error_deleting`, `manage_starting`,
  /// `manage_error`, `unmanage_starting`, `unmanage_error`, `unmanaged`,
  /// `extending`, `extending_error`, `shrinking`, `shrinking_error`, or
  /// `shrinking_possible_data_loss_error`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetShareArgs].
  /// [description] The human-readable description for the share.
  /// [exportLocationPath] The export location path of the share. Available
  /// [isPublic] The level of visibility for the share.
  /// [metadata] One or more metadata key and value pairs as a dictionary of
  /// [name] The name of the share.
  /// [region] The region in which to obtain the V2 Shared File System
  /// [shareNetworkId] The UUID of the share's share network.
  /// [snapshotId] The UUID of the share's base snapshot.
  /// [status] A share status filter. A valid value is `creating`,
  GetShareArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? exportLocationPath,
    pulumi.Output<bool>? isPublic,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? shareNetworkId,
    pulumi.Output<String>? snapshotId,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      exportLocationPath = pulumi.Input.asOptionalInput<String>(exportLocationPath),
      isPublic = pulumi.Input.asOptionalInput<bool>(isPublic),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      shareNetworkId = pulumi.Input.asOptionalInput<String>(shareNetworkId),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'exportLocationPath': ?exportLocationPath,
      'isPublic': ?isPublic,
      'metadata': ?metadata,
      'name': ?name,
      'region': ?region,
      'shareNetworkId': ?shareNetworkId,
      'snapshotId': ?snapshotId,
      'status': ?status,
    };
  }

  factory GetShareArgs.fromMap(Map<String, dynamic> map) {
    return GetShareArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      exportLocationPath: map['exportLocationPath'] == null ? null : pulumi.Output.create<String>(map['exportLocationPath'] as String),
      isPublic: map['isPublic'] == null ? null : pulumi.Output.create<bool>(map['isPublic'] as bool),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shareNetworkId: map['shareNetworkId'] == null ? null : pulumi.Output.create<String>(map['shareNetworkId'] as String),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

