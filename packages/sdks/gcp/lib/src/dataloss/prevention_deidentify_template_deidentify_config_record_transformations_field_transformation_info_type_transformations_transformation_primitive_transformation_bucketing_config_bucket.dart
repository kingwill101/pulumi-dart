// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_max.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_min.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_replacement_value.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket {
  /// Upper bound of the range, exclusive; type must match min.
  /// The `max` block must only contain one argument. See the `bucketingConfig` block description for more information about choosing a data type.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMax?>? max;
  /// Lower bound of the range, inclusive. Type should be the same as max if used.
  /// The `min` block must only contain one argument. See the `bucketingConfig` block description for more information about choosing a data type.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMin?>? min;
  /// Replacement value for this bucket.
  /// The `replacementValue` block must only contain one argument.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketReplacementValue> replacementValue;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket].
  /// [max] Upper bound of the range, exclusive; type must match min.
  /// [min] Lower bound of the range, inclusive. Type should be the same as max if used.
  /// [replacementValue] Replacement value for this bucket.
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket({
    this.max,
    this.min,
    required this.replacementValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMax, Map<String, dynamic>>(max, (value) => value.toMap()),
      'min': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMin, Map<String, dynamic>>(min, (value) => value.toMap()),
      'replacementValue': pulumi.Input.mapInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketReplacementValue, Map<String, dynamic>>(replacementValue, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMax.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replacementValue: pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketReplacementValue.fromMap((map['replacementValue']! as Map).cast<String, dynamic>())),
    );
  }
}
