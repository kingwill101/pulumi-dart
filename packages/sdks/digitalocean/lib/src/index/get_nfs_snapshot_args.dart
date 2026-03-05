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
    this.name,
    this.nameRegex,
    this.region,
    required this.shareId,
  });

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
    );
  }
}

