// ignore_for_file: unused_element, unnecessary_cast


class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped {
  /// A 128/192/256 bit key.
  /// A base64-encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String key;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped].
  /// [key] A 128/192/256 bit key.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped(
      key: map['key'] as String,
    );
  }
}

