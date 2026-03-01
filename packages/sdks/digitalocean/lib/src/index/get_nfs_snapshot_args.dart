// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_nfs_snapshot_get_nfs_snapshot_args_doc}
/// Arguments for getNfsSnapshot.
/// {@endtemplate}
/// {@macro pulumi_index_get_nfs_snapshot_get_nfs_snapshot_args_doc}
class GetNfsSnapshotArgs {
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? nameRegex;
  /// The region where the NFS snapshot is located.
  final pulumi.Input<String>? region;
  final pulumi.Input<String> shareId;

  /// Creates a new [GetNfsSnapshotArgs].
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [region] The region where the NFS snapshot is located.
  /// [shareId] Required.
  GetNfsSnapshotArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? region,
    required pulumi.Output<String> shareId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      region = pulumi.Input.asOptionalInput<String>(region),
      shareId = pulumi.Input.asInput<String>(shareId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'nameRegex': ?nameRegex,
      'region': ?region,
      'shareId': shareId,
    };
  }

  factory GetNfsSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetNfsSnapshotArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shareId: pulumi.Output.create<String>(map['shareId'] as String),
    );
  }
}

