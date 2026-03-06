// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyRingImportJobPublicKey {
  /// (Output)
  /// The public key, encoded in PEM format. For more information, see the RFC 7468 sections
  /// for General Considerations and Textual Encoding of Subject Public Key Info.
  final pulumi.Input<String>? pem;

  /// Creates a new [KeyRingImportJobPublicKey].
  /// [pem] (Output)
  const KeyRingImportJobPublicKey({
    this.pem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pem': ?pem,
    };
  }

  factory KeyRingImportJobPublicKey.fromMap(Map<String, dynamic> map) {
    return KeyRingImportJobPublicKey(
      pem: (() { final guardedValue = map['pem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

