// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_keypair_get_keypair_args_doc}
/// Arguments for getKeypair.
/// {@endtemplate}
/// {@macro pulumi_compute_get_keypair_get_keypair_args_doc}
class GetKeypairArgs {
  /// The unique name of the keypair.
  final pulumi.Input<String> name;
  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The user id of the owner of the key pair.
  /// This parameter can be specified only if the provider is configured to use
  /// the credentials of an OpenStack administrator.
  final pulumi.Input<String>? userId;

  /// Creates a new [GetKeypairArgs].
  /// [name] The unique name of the keypair.
  /// [region] The region in which to obtain the V2 Compute client.
  /// [userId] The user id of the owner of the key pair.
  GetKeypairArgs({
    required this.name,
    this.region,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'userId': ?userId,
    };
  }

  factory GetKeypairArgs.fromMap(Map<String, dynamic> map) {
    return GetKeypairArgs(
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
    );
  }
}

