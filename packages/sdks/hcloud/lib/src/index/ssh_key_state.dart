// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SshKey resources.
class SshKeyState {
  /// Fingerprint of the SSH public key.
  final pulumi.Input<String>? fingerprint;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the SSH Key.
  final pulumi.Input<String>? name;
  /// Public key of the SSH Key pair. If this is a file, it can be read using the `file` interpolation function.
  final pulumi.Input<String>? publicKey;

  /// Creates a new [SshKeyState].
  /// [fingerprint] Fingerprint of the SSH public key.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the SSH Key.
  /// [publicKey] Public key of the SSH Key pair. If this is a file, it can be read using the `file` interpolation function.
  SshKeyState({
    pulumi.Output<String>? fingerprint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? publicKey,
  }) :
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': ?fingerprint,
      'labels': ?labels,
      'name': ?name,
      'publicKey': ?publicKey,
    };
  }

  factory SshKeyState.fromMap(Map<String, dynamic> map) {
    return SshKeyState(
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
    );
  }
}

