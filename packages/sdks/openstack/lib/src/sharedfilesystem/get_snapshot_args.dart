// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sharedfilesystem_get_snapshot_get_snapshot_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_sharedfilesystem_get_snapshot_get_snapshot_args_doc}
class GetSnapshotArgs {
  /// The human-readable description of the snapshot.
  final pulumi.Input<String>? description;
  /// The name of the snapshot.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 Shared File System client.
  final pulumi.Input<String>? region;
  /// The UUID of the source share that was used to create the snapshot.
  final pulumi.Input<String>? shareId;
  /// A snapshot status filter. A valid value is `available`, `error`,
  /// `creating`, `deleting`, `manage_starting`, `manage_error`, `unmanage_starting`,
  /// `unmanage_error` or `error_deleting`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetSnapshotArgs].
  /// [description] The human-readable description of the snapshot.
  /// [name] The name of the snapshot.
  /// [region] The region in which to obtain the V2 Shared File System client.
  /// [shareId] The UUID of the source share that was used to create the snapshot.
  /// [status] A snapshot status filter. A valid value is `available`, `error`,
  GetSnapshotArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? shareId,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      shareId = pulumi.Input.asOptionalInput<String>(shareId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'shareId': ?shareId,
      'status': ?status,
    };
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shareId: map['shareId'] == null ? null : pulumi.Output.create<String>(map['shareId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

