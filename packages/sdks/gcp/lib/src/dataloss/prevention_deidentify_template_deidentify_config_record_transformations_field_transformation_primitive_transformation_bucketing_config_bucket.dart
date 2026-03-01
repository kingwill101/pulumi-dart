// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_bucketing_config_bucket_max.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_bucketing_config_bucket_min.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_bucketing_config_bucket_replacement_value.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket {
  /// Upper bound of the range, exclusive; type must match min.
  /// The `max` block must only contain one argument. See the `bucketing_config` block description for more information about choosing a data type.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucketMax? max;
  /// Lower bound of the range, inclusive. Type should be the same as max if used.
  /// The `min` block must only contain one argument. See the `bucketing_config` block description for more information about choosing a data type.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucketMin? min;
  /// Replacement value for this bucket.
  /// The `replacement_value` block must only contain one argument.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucketReplacementValue replacementValue;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket].
  /// [max] Upper bound of the range, exclusive; type must match min.
  /// [min] Lower bound of the range, inclusive. Type should be the same as max if used.
  /// [replacementValue] Replacement value for this bucket.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket({
    this.max,
    this.min,
    required this.replacementValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max == null ? null : max!.toMap(),
      'min': ?min == null ? null : min!.toMap(),
      'replacementValue': replacementValue.toMap(),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket(
      max: map['max'] == null ? null : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucketMax.fromMap((map['max'] as Map).cast<String, dynamic>()),
      min: map['min'] == null ? null : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucketMin.fromMap((map['min'] as Map).cast<String, dynamic>()),
      replacementValue: PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucketReplacementValue.fromMap((map['replacementValue'] as Map).cast<String, dynamic>()),
    );
  }
}

