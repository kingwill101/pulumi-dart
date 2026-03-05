// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A CryptoKeyVersionTemplate specifies the properties to use when creating a new CryptoKeyVersion, either manually with CreateCryptoKeyVersion or automatically as a result of auto-rotation.
class CryptoKeyVersionTemplateResponse {
  /// Algorithm to use when creating a CryptoKeyVersion based on this template. For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied if both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT.
  final pulumi.Input<String> algorithm;
  /// ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaults to SOFTWARE.
  final pulumi.Input<String> protectionLevel;

  /// Creates a new [CryptoKeyVersionTemplateResponse].
  /// [algorithm] Algorithm to use when creating a CryptoKeyVersion based on this template. For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied if both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT.
  /// [protectionLevel] ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaults to SOFTWARE.
  CryptoKeyVersionTemplateResponse({
    required this.algorithm,
    required this.protectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'protectionLevel': protectionLevel,
    };
  }

  factory CryptoKeyVersionTemplateResponse.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionTemplateResponse(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      protectionLevel: pulumi.Input.fromValue(map['protectionLevel'] as String),
    );
  }
}

