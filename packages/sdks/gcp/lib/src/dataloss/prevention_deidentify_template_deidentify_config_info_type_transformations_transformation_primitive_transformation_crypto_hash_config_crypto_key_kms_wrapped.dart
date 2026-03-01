// ignore_for_file: unused_element, unnecessary_cast


class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped {
  /// The resource name of the KMS CryptoKey to use for unwrapping.
  final String cryptoKeyName;
  /// The wrapped data crypto key.
  /// A base64-encoded string.
  final String wrappedKey;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped].
  /// [cryptoKeyName] The resource name of the KMS CryptoKey to use for unwrapping.
  /// [wrappedKey] The wrapped data crypto key.
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyName': cryptoKeyName,
      'wrappedKey': wrappedKey,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped(
      cryptoKeyName: map['cryptoKeyName'] as String,
      wrappedKey: map['wrappedKey'] as String,
    );
  }
}

