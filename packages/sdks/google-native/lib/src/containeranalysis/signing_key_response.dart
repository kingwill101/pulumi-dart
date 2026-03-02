// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This defines the format used to record keys used in the software supply chain. An in-toto link is attested using one or more keys defined in the in-toto layout. An example of this is: { "key_id": "776a00e29f3559e0141b3b096f696abc6cfb0c657ab40f441132b345b0...", "key_type": "rsa", "public_key_value": "-----BEGIN PUBLIC KEY-----\nMIIBojANBgkqhkiG9w0B...", "key_scheme": "rsassa-pss-sha256" } The format for in-toto's key definition can be found in section 4.2 of the in-toto specification.
class SigningKeyResponse {
  /// key_id is an identifier for the signing key.
  final pulumi.Input<String> keyId;
  /// This field contains the corresponding signature scheme. Eg: "rsassa-pss-sha256".
  final pulumi.Input<String> keyScheme;
  /// This field identifies the specific signing method. Eg: "rsa", "ed25519", and "ecdsa".
  final pulumi.Input<String> keyType;
  /// This field contains the actual public key.
  final pulumi.Input<String> publicKeyValue;

  /// Creates a new [SigningKeyResponse].
  /// [keyId] key_id is an identifier for the signing key.
  /// [keyScheme] This field contains the corresponding signature scheme. Eg: "rsassa-pss-sha256".
  /// [keyType] This field identifies the specific signing method. Eg: "rsa", "ed25519", and "ecdsa".
  /// [publicKeyValue] This field contains the actual public key.
  SigningKeyResponse({
    required this.keyId,
    required this.keyScheme,
    required this.keyType,
    required this.publicKeyValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'keyScheme': keyScheme,
      'keyType': keyType,
      'publicKeyValue': publicKeyValue,
    };
  }

  factory SigningKeyResponse.fromMap(Map<String, dynamic> map) {
    return SigningKeyResponse(
      keyId: (map['keyId'] as String).input(),
      keyScheme: (map['keyScheme'] as String).input(),
      keyType: (map['keyType'] as String).input(),
      publicKeyValue: (map['publicKeyValue'] as String).input(),
    );
  }
}

