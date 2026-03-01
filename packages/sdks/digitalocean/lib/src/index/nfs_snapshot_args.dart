// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_nfs_snapshot_nfs_snapshot_args_doc}
/// The set of arguments for NfsSnapshot.
/// {@endtemplate}
/// {@macro pulumi_index_nfs_snapshot_nfs_snapshot_args_doc}
class NfsSnapshotArgs {
  /// A name for the NFS snapshot. Must be lowercase and composed only of numbers, letters, and "-", up to a limit of 64 characters.
  final pulumi.Input<String>? name;
  /// The region where the NFS snapshot will be created.
  final pulumi.Input<String> region;
  /// The ID of the NFS share to snapshot.
  final pulumi.Input<String> shareId;

  /// Creates a new [NfsSnapshotArgs].
  /// [name] A name for the NFS snapshot. Must be lowercase and composed only of numbers, letters, and "-", up to a limit of 64 characters.
  /// [region] The region where the NFS snapshot will be created.
  /// [shareId] The ID of the NFS share to snapshot.
  NfsSnapshotArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> region,
    required pulumi.Output<String> shareId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asInput<String>(region),
      shareId = pulumi.Input.asInput<String>(shareId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': region,
      'shareId': shareId,
    };
  }

  factory NfsSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return NfsSnapshotArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      shareId: pulumi.Output.create<String>(map['shareId'] as String),
    );
  }
}

