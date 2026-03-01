// ignore_for_file: unused_element, unnecessary_cast


class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped {
  /// The resource name of the KMS CryptoKey to use for unwrapping.
  final String cryptoKeyName;
  /// The wrapped data crypto key.
  /// A base64-encoded string.
  final String wrappedKey;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped].
  /// [cryptoKeyName] The resource name of the KMS CryptoKey to use for unwrapping.
  /// [wrappedKey] The wrapped data crypto key.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyName': cryptoKeyName,
      'wrappedKey': wrappedKey,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationDateShiftConfigCryptoKeyKmsWrapped(
      cryptoKeyName: map['cryptoKeyName'] as String,
      wrappedKey: map['wrappedKey'] as String,
    );
  }
}

