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
    this.description,
    this.exportLocationPath,
    this.isPublic,
    this.metadata,
    this.name,
    this.region,
    this.shareNetworkId,
    this.snapshotId,
    this.status,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportLocationPath: (() { final guardedValue = map['exportLocationPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareNetworkId: (() { final guardedValue = map['shareNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

