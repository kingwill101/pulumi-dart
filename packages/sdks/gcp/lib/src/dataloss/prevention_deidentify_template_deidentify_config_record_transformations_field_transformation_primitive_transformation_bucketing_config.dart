// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_bucketing_config_bucket.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfig {
  /// Set of buckets. Ranges must be non-overlapping.
  /// Bucket is represented as a range, along with replacement values.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket>?>? buckets;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfig].
  /// [buckets] Set of buckets. Ranges must be non-overlapping.
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfig({
    this.buckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': ?pulumi.Input.mapOptionalInputValue<List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket>, List<Map<String, dynamic>>>(buckets, (value) => pulumi.Input.encodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfig.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfig(
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket>(guardedValue, (value) => PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
