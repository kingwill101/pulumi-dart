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
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? publicKey,
    pulumi.Output<String>? region,
    pulumi.Output<String>? userId,
    pulumi.Output<Map<String, String>>? valueSpecs,
  }) :
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs);

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
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
      valueSpecs: map['valueSpecs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['valueSpecs'] as Map).cast<String, String>()),
    );
  }
}

