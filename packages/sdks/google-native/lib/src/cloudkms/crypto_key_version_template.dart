// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_version_template_algorithm.dart';
import 'crypto_key_version_template_protection_level.dart';

/// A CryptoKeyVersionTemplate specifies the properties to use when creating a new CryptoKeyVersion, either manually with CreateCryptoKeyVersion or automatically as a result of auto-rotation.
class CryptoKeyVersionTemplate {
  /// Algorithm to use when creating a CryptoKeyVersion based on this template. For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied if both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT.
  final pulumi.Input<CryptoKeyVersionTemplateAlgorithm> algorithm;
  /// ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaults to SOFTWARE.
  final pulumi.Input<CryptoKeyVersionTemplateProtectionLevel>? protectionLevel;

  /// Creates a new [CryptoKeyVersionTemplate].
  /// [algorithm] Algorithm to use when creating a CryptoKeyVersion based on this template. For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied if both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT.
  /// [protectionLevel] ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaults to SOFTWARE.
  const CryptoKeyVersionTemplate({
    required this.algorithm,
    this.protectionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': pulumi.Input.mapInputValue<CryptoKeyVersionTemplateAlgorithm, String>(algorithm, (value) => value.wireValue),
      'protectionLevel': ?pulumi.Input.mapOptionalInputValue<CryptoKeyVersionTemplateProtectionLevel, String>(protectionLevel, (value) => value.wireValue),
    };
  }

  factory CryptoKeyVersionTemplate.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionTemplate(
      algorithm: pulumi.Input.fromValue(CryptoKeyVersionTemplateAlgorithm.fromValue(map['algorithm']! as String)),
      protectionLevel: (() { final guardedValue = map['protectionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CryptoKeyVersionTemplateProtectionLevel.fromValue(guardedValue as String)); })(),
    );
  }
}

