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
  const SshKeyState({
    this.fingerprint,
    this.name,
    this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': ?fingerprint,
      'name': ?name,
      'publicKey': ?publicKey,
    };
  }

  factory SshKeyState.fromMap(Map<String, dynamic> map) {
    return SshKeyState(
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

