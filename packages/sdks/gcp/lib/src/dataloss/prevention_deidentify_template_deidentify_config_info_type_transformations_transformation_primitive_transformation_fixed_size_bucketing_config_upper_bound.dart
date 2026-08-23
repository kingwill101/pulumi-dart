// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound {
  /// A float value.
  final pulumi.Input<double>? floatValue;
  /// An integer value (int64 format)
  final pulumi.Input<String>? integerValue;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound].
  /// [floatValue] A float value.
  /// [integerValue] An integer value (int64 format)
  const PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound({
    this.floatValue,
    this.integerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floatValue': ?floatValue,
      'integerValue': ?integerValue,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound(
      floatValue: (() { final guardedValue = map['floatValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      integerValue: (() { final guardedValue = map['integerValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
