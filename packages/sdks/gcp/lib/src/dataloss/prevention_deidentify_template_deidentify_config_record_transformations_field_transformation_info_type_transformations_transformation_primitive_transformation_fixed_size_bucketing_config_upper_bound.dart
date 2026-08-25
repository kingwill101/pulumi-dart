// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound {
  /// A float value.
  final pulumi.Input<double?>? floatValue;
  /// An integer value (int64 format)
  final pulumi.Input<String?>? integerValue;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound].
  /// [floatValue] A float value.
  /// [integerValue] An integer value (int64 format)
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound({
    this.floatValue,
    this.integerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floatValue': ?floatValue,
      'integerValue': ?integerValue,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound(
      floatValue: (() { final guardedValue = map['floatValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      integerValue: (() { final guardedValue = map['integerValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
