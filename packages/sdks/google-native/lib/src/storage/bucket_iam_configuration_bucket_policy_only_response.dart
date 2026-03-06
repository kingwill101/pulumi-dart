// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's uniform bucket-level access configuration. The feature was formerly known as Bucket Policy Only. For backward compatibility, this field will be populated with identical information as the uniformBucketLevelAccess field. We recommend using the uniformBucketLevelAccess field to enable and disable the feature.
class BucketIamConfigurationBucketPolicyOnlyResponse {
  /// If set, access is controlled only by bucket-level or above IAM policies.
  final pulumi.Input<bool> enabled;
  /// The deadline for changing iamConfiguration.bucketPolicyOnly.enabled from true to false in RFC 3339 format. iamConfiguration.bucketPolicyOnly.enabled may be changed from true to false until the locked time, after which the field is immutable.
  final pulumi.Input<String> lockedTime;

  /// Creates a new [BucketIamConfigurationBucketPolicyOnlyResponse].
  /// [enabled] If set, access is controlled only by bucket-level or above IAM policies.
  /// [lockedTime] The deadline for changing iamConfiguration.bucketPolicyOnly.enabled from true to false in RFC 3339 format. iamConfiguration.bucketPolicyOnly.enabled may be changed from true to false until the locked time, after which the field is immutable.
  const BucketIamConfigurationBucketPolicyOnlyResponse({
    required this.enabled,
    required this.lockedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'lockedTime': lockedTime,
    };
  }

  factory BucketIamConfigurationBucketPolicyOnlyResponse.fromMap(Map<String, dynamic> map) {
    return BucketIamConfigurationBucketPolicyOnlyResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      lockedTime: pulumi.Input.fromValue(map['lockedTime'] as String),
    );
  }
}

