// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Appliance SSHKey definition.
class SSHKeyResponse {
  /// User Private Key.
  final pulumi.Input<String?>? privateKey;
  /// User Public Key.
  final pulumi.Input<String?>? publicKey;

  /// Creates a new [SSHKeyResponse].
  /// [privateKey] User Private Key.
  /// [publicKey] User Public Key.
  const SSHKeyResponse({
    this.privateKey,
    this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKey': ?privateKey,
      'publicKey': ?publicKey,
    };
  }

  factory SSHKeyResponse.fromMap(Map<String, dynamic> map) {
    return SSHKeyResponse(
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
