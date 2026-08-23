// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped {
  /// The resource name of the KMS CryptoKey to use for unwrapping.
  final pulumi.Input<String> cryptoKeyName;
  /// The wrapped data crypto key.
  /// A base64-encoded string.
  final pulumi.Input<String> wrappedKey;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped].
  /// [cryptoKeyName] The resource name of the KMS CryptoKey to use for unwrapping.
  /// [wrappedKey] The wrapped data crypto key.
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyName': cryptoKeyName,
      'wrappedKey': wrappedKey,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyKmsWrapped(
      cryptoKeyName: pulumi.Input.fromValue(map['cryptoKeyName'] as String),
      wrappedKey: pulumi.Input.fromValue(map['wrappedKey'] as String),
    );
  }
}
