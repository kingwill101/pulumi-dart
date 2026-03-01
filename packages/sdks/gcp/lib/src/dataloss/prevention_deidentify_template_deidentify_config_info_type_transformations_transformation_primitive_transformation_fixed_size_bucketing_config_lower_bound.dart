// ignore_for_file: unused_element, unnecessary_cast


class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound {
  /// A float value.
  final double? floatValue;
  /// An integer value (int64 format)
  final String? integerValue;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound].
  /// [floatValue] A float value.
  /// [integerValue] An integer value (int64 format)
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound({
    this.floatValue,
    this.integerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floatValue': ?floatValue,
      'integerValue': ?integerValue,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound(
      floatValue: map['floatValue'] == null ? null : map['floatValue'] as double,
      integerValue: map['integerValue'] == null ? null : map['integerValue'] as String,
    );
  }
}

