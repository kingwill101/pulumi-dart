// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_nfs_nfs_args_doc}
/// The set of arguments for Nfs.
/// {@endtemplate}
/// {@macro pulumi_index_nfs_nfs_args_doc}
class NfsArgs {
  /// A name for the NFS share. Must be lowercase and composed only of numbers, letters, and "-", up to a limit of 64 characters. The name must begin with a letter.
  final pulumi.Input<String>? name;
  /// The performance tier for the NFS share. Can be `standard` or `high`. Defaults to `high`. Changing this will cause the performance tier to be switched.
  /// &gt; **Note:** You cannot downgrade the performance tier from `high` to `standard` after creation. Upgrades from `standard` to `high` are allowed.
  final pulumi.Input<String>? performanceTier;
  /// The region where the NFS share will be created.
  final pulumi.Input<String> region;
  /// The size of the NFS share in GiB. Minimum size is 50 GiB.
  final pulumi.Input<int> size;
  final pulumi.Input<List<String>>? tags;
  /// The ID of the VPC where the NFS share will be created.
  final pulumi.Input<String> vpcId;

  /// Creates a new [NfsArgs].
  /// [name] A name for the NFS share. Must be lowercase and composed only of numbers, letters, and "-", up to a limit of 64 characters. The name must begin with a letter.
  /// [performanceTier] The performance tier for the NFS share. Can be `standard` or `high`. Defaults to `high`. Changing this will cause the performance tier to be switched.
  /// [region] The region where the NFS share will be created.
  /// [size] The size of the NFS share in GiB. Minimum size is 50 GiB.
  /// [tags] Optional.
  /// [vpcId] The ID of the VPC where the NFS share will be created.
  const NfsArgs({
    this.name,
    this.performanceTier,
    required this.region,
    required this.size,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'performanceTier': ?performanceTier,
      'region': region,
      'size': size,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory NfsArgs.fromMap(Map<String, dynamic> map) {
    return NfsArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceTier: (() { final guardedValue = map['performanceTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
