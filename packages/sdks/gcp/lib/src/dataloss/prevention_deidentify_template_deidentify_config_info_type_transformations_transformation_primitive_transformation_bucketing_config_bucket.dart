// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_max.dart';
import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_min.dart';
import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_replacement_value.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket {
  /// Upper bound of the range, exclusive; type must match min.
  /// The `max` block must only contain one argument. See the `bucketingConfig` block description for more information about choosing a data type.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMax>? max;
  /// Lower bound of the range, inclusive. Type should be the same as max if used.
  /// The `min` block must only contain one argument. See the `bucketingConfig` block description for more information about choosing a data type.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMin>? min;
  /// Replacement value for this bucket.
  /// The `replacementValue` block must only contain one argument.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketReplacementValue> replacementValue;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket].
  /// [max] Upper bound of the range, exclusive; type must match min.
  /// [min] Lower bound of the range, inclusive. Type should be the same as max if used.
  /// [replacementValue] Replacement value for this bucket.
  const PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket({
    this.max,
    this.min,
    required this.replacementValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMax, Map<String, dynamic>>(max, (value) => value.toMap()),
      'min': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMin, Map<String, dynamic>>(min, (value) => value.toMap()),
      'replacementValue': pulumi.Input.mapInputValue<PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketReplacementValue, Map<String, dynamic>>(replacementValue, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMax.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replacementValue: pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketReplacementValue.fromMap((map['replacementValue']! as Map).cast<String, dynamic>())),
    );
  }
}
