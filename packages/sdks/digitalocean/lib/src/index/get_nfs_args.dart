// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_nfs_get_nfs_args_doc}
/// Arguments for getNfs.
/// {@endtemplate}
/// {@macro pulumi_index_get_nfs_get_nfs_args_doc}
class GetNfsArgs {
  /// The name of the NFS share.
  final pulumi.Input<String> name;
  /// The region where the NFS share is located.
  final pulumi.Input<String>? region;

  /// Creates a new [GetNfsArgs].
  /// [name] The name of the NFS share.
  /// [region] The region where the NFS share is located.
  GetNfsArgs({
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetNfsArgs.fromMap(Map<String, dynamic> map) {
    return GetNfsArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

