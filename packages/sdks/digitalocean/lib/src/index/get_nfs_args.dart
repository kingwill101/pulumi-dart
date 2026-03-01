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
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetNfsArgs.fromMap(Map<String, dynamic> map) {
    return GetNfsArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

