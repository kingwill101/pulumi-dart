// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_iam_configuration_bucket_policy_only.dart';
import 'bucket_iam_configuration_uniform_bucket_level_access.dart';

/// The bucket's IAM configuration.
class BucketIamConfiguration {
  /// The bucket's uniform bucket-level access configuration. The feature was formerly known as Bucket Policy Only. For backward compatibility, this field will be populated with identical information as the uniformBucketLevelAccess field. We recommend using the uniformBucketLevelAccess field to enable and disable the feature.
  final pulumi.Input<BucketIamConfigurationBucketPolicyOnly>? bucketPolicyOnly;
  /// The bucket's Public Access Prevention configuration. Currently, 'inherited' and 'enforced' are supported.
  final pulumi.Input<String>? publicAccessPrevention;
  /// The bucket's uniform bucket-level access configuration.
  final pulumi.Input<BucketIamConfigurationUniformBucketLevelAccess>? uniformBucketLevelAccess;

  /// Creates a new [BucketIamConfiguration].
  /// [bucketPolicyOnly] The bucket's uniform bucket-level access configuration. The feature was formerly known as Bucket Policy Only. For backward compatibility, this field will be populated with identical information as the uniformBucketLevelAccess field. We recommend using the uniformBucketLevelAccess field to enable and disable the feature.
  /// [publicAccessPrevention] The bucket's Public Access Prevention configuration. Currently, 'inherited' and 'enforced' are supported.
  /// [uniformBucketLevelAccess] The bucket's uniform bucket-level access configuration.
  BucketIamConfiguration({
    this.bucketPolicyOnly,
    this.publicAccessPrevention,
    this.uniformBucketLevelAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketPolicyOnly': ?pulumi.Input.mapOptionalInputValue<BucketIamConfigurationBucketPolicyOnly, Map<String, dynamic>>(bucketPolicyOnly, (value) => value.toMap()),
      'publicAccessPrevention': ?publicAccessPrevention,
      'uniformBucketLevelAccess': ?pulumi.Input.mapOptionalInputValue<BucketIamConfigurationUniformBucketLevelAccess, Map<String, dynamic>>(uniformBucketLevelAccess, (value) => value.toMap()),
    };
  }

  factory BucketIamConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketIamConfiguration(
      bucketPolicyOnly: map['bucketPolicyOnly'] == null ? null : (BucketIamConfigurationBucketPolicyOnly.fromMap((map['bucketPolicyOnly'] as Map).cast<String, dynamic>())).input(),
      publicAccessPrevention: map['publicAccessPrevention'] == null ? null : (map['publicAccessPrevention'] as String).input(),
      uniformBucketLevelAccess: map['uniformBucketLevelAccess'] == null ? null : (BucketIamConfigurationUniformBucketLevelAccess.fromMap((map['uniformBucketLevelAccess'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

