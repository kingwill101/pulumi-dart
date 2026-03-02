// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Keypair resources.
class KeypairState {
  /// The fingerprint of the public key.
  final pulumi.Input<String>? fingerprint;
  /// A unique name for the keypair. Changing this creates a new
  /// keypair.
  final pulumi.Input<String>? name;
  /// The generated private key when no public key is specified.
  final pulumi.Input<String>? privateKey;
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

  /// Creates a new [KeypairState].
  /// [fingerprint] The fingerprint of the public key.
  /// [name] A unique name for the keypair. Changing this creates a new
  /// [privateKey] The generated private key when no public key is specified.
  /// [publicKey] A pregenerated OpenSSH-formatted public key.
  /// [region] The region in which to obtain the V2 Compute client.
  /// [userId] This allows administrative users to operate key-pairs
  /// [valueSpecs] Map of additional options.
  KeypairState({
    this.fingerprint,
    this.name,
    this.privateKey,
    this.publicKey,
    this.region,
    this.userId,
    this.valueSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': ?fingerprint,
      'name': ?name,
      'privateKey': ?privateKey,
      'publicKey': ?publicKey,
      'region': ?region,
      'userId': ?userId,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory KeypairState.fromMap(Map<String, dynamic> map) {
    return KeypairState(
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey']! as String).input(),
      publicKey: map['publicKey'] == null ? null : (map['publicKey']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
      valueSpecs: map['valueSpecs'] == null ? null : ((map['valueSpecs']! as Map).cast<String, String>()).input(),
    );
  }
}

