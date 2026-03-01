// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SshKey resources.
class SshKeyState {
  /// The fingerprint of the SSH key
  final pulumi.Input<String>? fingerprint;
  /// The name of the SSH key for identification
  final pulumi.Input<String>? name;
  /// The public key. If this is a file, it
  /// can be read using the file interpolation function
  final pulumi.Input<String>? publicKey;

  /// Creates a new [SshKeyState].
  /// [fingerprint] The fingerprint of the SSH key
  /// [name] The name of the SSH key for identification
  /// [publicKey] The public key. If this is a file, it
  SshKeyState({
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? publicKey,
  }) :
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': ?fingerprint,
      'name': ?name,
      'publicKey': ?publicKey,
    };
  }

  factory SshKeyState.fromMap(Map<String, dynamic> map) {
    return SshKeyState(
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
    );
  }
}

