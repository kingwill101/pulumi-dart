// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_fixed_size_bucketing_config_lower_bound.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_fixed_size_bucketing_config_upper_bound.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfig {
  /// Size of each bucket (except for minimum and maximum buckets).
  /// So if lowerBound = 10, upperBound = 89, and bucketSize = 10, then the following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89+.
  /// Precision up to 2 decimals works.
  final pulumi.Input<double> bucketSize;
  /// Lower bound value of buckets.
  /// All values less than lowerBound are grouped together into a single bucket; for example if lowerBound = 10, then all values less than 10 are replaced with the value "-10".
  /// The `lowerBound` block must only contain one argument. See the `fixedSizeBucketingConfig` block description for more information about choosing a data type.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound> lowerBound;
  /// Upper bound value of buckets.
  /// All values greater than upperBound are grouped together into a single bucket; for example if upperBound = 89, then all values greater than 89 are replaced with the value "89+".
  /// The `upperBound` block must only contain one argument. See the `fixedSizeBucketingConfig` block description for more information about choosing a data type.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound> upperBound;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfig].
  /// [bucketSize] Size of each bucket (except for minimum and maximum buckets).
  /// [lowerBound] Lower bound value of buckets.
  /// [upperBound] Upper bound value of buckets.
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfig({
    required this.bucketSize,
    required this.lowerBound,
    required this.upperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketSize': bucketSize,
      'lowerBound': pulumi.Input.mapInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound, Map<String, dynamic>>(lowerBound, (value) => value.toMap()),
      'upperBound': pulumi.Input.mapInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound, Map<String, dynamic>>(upperBound, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfig.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfig(
      bucketSize: pulumi.Input.fromValue((map['bucketSize'] as num).toDouble()),
      lowerBound: pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound.fromMap((map['lowerBound']! as Map).cast<String, dynamic>())),
      upperBound: pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound.fromMap((map['upperBound']! as Map).cast<String, dynamic>())),
    );
  }
}
