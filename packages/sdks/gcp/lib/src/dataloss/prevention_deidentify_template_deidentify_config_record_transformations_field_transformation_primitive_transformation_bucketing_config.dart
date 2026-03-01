// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_bucketing_config_bucket.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfig {
  /// Set of buckets. Ranges must be non-overlapping.
  /// Bucket is represented as a range, along with replacement values.
  /// Structure is documented below.
  final List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket>? buckets;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfig].
  /// [buckets] Set of buckets. Ranges must be non-overlapping.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfig({
    this.buckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': ?buckets == null ? null : pulumi.Input.encodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket, Map<String, dynamic>>(buckets!, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfig.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfig(
      buckets: map['buckets'] == null ? null : pulumi.Input.decodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket>(map['buckets'], (value) => PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationBucketingConfigBucket.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

