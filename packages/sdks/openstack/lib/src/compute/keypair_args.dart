// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_keypair_keypair_args_doc}
/// The set of arguments for Keypair.
/// {@endtemplate}
/// {@macro pulumi_compute_keypair_keypair_args_doc}
class KeypairArgs {
  /// A unique name for the keypair. Changing this creates a new
  /// keypair.
  final pulumi.Input<String>? name;
  /// A pregenerated OpenSSH-formatted public key.
  /// Changing this creates a new keypair. If a public key is not specified, then
  /// a public/private key pair will be automatically generated. If a pair is
  /// created, then destroying this resource means you will lose access to that
  /// keypair forever.
  final pulumi.Input<String>? publicKey;
  /// The region in which to obtain the V2 Compute client.
  /// Keypairs are associated with accounts, but a Compute client is needed to
  /// create one. If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new keypair.
  final pulumi.Input<String>? region;
  /// This allows administrative users to operate key-pairs
  /// of specified user ID. For this feature your need to have openstack microversion
  /// 2.10 (Liberty) or later.
  final pulumi.Input<String>? userId;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [KeypairArgs].
  /// [name] A unique name for the keypair. Changing this creates a new
  /// [publicKey] A pregenerated OpenSSH-formatted public key.
  /// [region] The region in which to obtain the V2 Compute client.
  /// [userId] This allows administrative users to operate key-pairs
  /// [valueSpecs] Map of additional options.
  KeypairArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? publicKey,
    pulumi.Output<String>? region,
    pulumi.Output<String>? userId,
    pulumi.Output<Map<String, String>>? valueSpecs,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'publicKey': ?publicKey,
      'region': ?region,
      'userId': ?userId,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory KeypairArgs.fromMap(Map<String, dynamic> map) {
    return KeypairArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
      valueSpecs: map['valueSpecs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['valueSpecs'] as Map).cast<String, String>()),
    );
  }
}

