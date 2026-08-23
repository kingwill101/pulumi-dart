// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_access_point_access_policy.dart';

/// {@template pulumi_index_nfs_access_point_nfs_access_point_args_doc}
/// The set of arguments for NfsAccessPoint.
/// {@endtemplate}
/// {@macro pulumi_index_nfs_access_point_nfs_access_point_args_doc}
class NfsAccessPointArgs {
  /// Access policy configuration for the access point. See Access Policy below.
  final pulumi.Input<NfsAccessPointAccessPolicy> accessPolicy;
  /// A name for the NFS access point.
  final pulumi.Input<String>? name;
  /// The export path for the access point.
  final pulumi.Input<String> path;
  /// The ID of the NFS share.
  final pulumi.Input<String> shareId;
  /// The ID of the VPC that can access this access point. The VPC must be attached to the NFS share.
  final pulumi.Input<String> vpcId;

  /// Creates a new [NfsAccessPointArgs].
  /// [accessPolicy] Access policy configuration for the access point. See Access Policy below.
  /// [name] A name for the NFS access point.
  /// [path] The export path for the access point.
  /// [shareId] The ID of the NFS share.
  /// [vpcId] The ID of the VPC that can access this access point. The VPC must be attached to the NFS share.
  const NfsAccessPointArgs({
    required this.accessPolicy,
    this.name,
    required this.path,
    required this.shareId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': pulumi.Input.mapInputValue<NfsAccessPointAccessPolicy, Map<String, dynamic>>(accessPolicy, (value) => value.toMap()),
      'name': ?name,
      'path': path,
      'shareId': shareId,
      'vpcId': vpcId,
    };
  }

  factory NfsAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return NfsAccessPointArgs(
      accessPolicy: pulumi.Input.fromValue(NfsAccessPointAccessPolicy.fromMap((map['accessPolicy']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
