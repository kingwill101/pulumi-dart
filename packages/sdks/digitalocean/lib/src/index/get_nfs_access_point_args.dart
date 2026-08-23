// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_nfs_access_point_get_nfs_access_point_args_doc}
/// Arguments for getNfsAccessPoint.
/// {@endtemplate}
/// {@macro pulumi_index_get_nfs_access_point_get_nfs_access_point_args_doc}
class GetNfsAccessPointArgs {
  /// The ID of the NFS access point. Conflicts with `name`, `shareId`, and `vpcId`.
  final pulumi.Input<String>? id;
  /// The name of the NFS access point. Must be used with `shareId`. Conflicts with `id`.
  final pulumi.Input<String>? name;
  /// The ID of the NFS share. Must be used with `name`. Conflicts with `id`.
  final pulumi.Input<String>? shareId;
  /// When looking up by `name` and `shareId`, optionally filter to the access point attached to this VPC. Conflicts with `id`.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetNfsAccessPointArgs].
  /// [id] The ID of the NFS access point. Conflicts with `name`, `shareId`, and `vpcId`.
  /// [name] The name of the NFS access point. Must be used with `shareId`. Conflicts with `id`.
  /// [shareId] The ID of the NFS share. Must be used with `name`. Conflicts with `id`.
  /// [vpcId] When looking up by `name` and `shareId`, optionally filter to the access point attached to this VPC. Conflicts with `id`.
  const GetNfsAccessPointArgs({
    this.id,
    this.name,
    this.shareId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'shareId': ?shareId,
      'vpcId': ?vpcId,
    };
  }

  factory GetNfsAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return GetNfsAccessPointArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
