// ignore_for_file: unused_element, unnecessary_cast


class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped {
  /// A 128/192/256 bit key.
  /// A base64-encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String key;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped].
  /// [key] A 128/192/256 bit key.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped(
      key: map['key'] as String,
    );
  }
}

