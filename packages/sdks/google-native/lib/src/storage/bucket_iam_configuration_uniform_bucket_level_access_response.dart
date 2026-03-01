// ignore_for_file: unused_element, unnecessary_cast


/// The bucket's uniform bucket-level access configuration.
class BucketIamConfigurationUniformBucketLevelAccessResponse {
  /// If set, access is controlled only by bucket-level or above IAM policies.
  final bool enabled;
  /// The deadline for changing iamConfiguration.uniformBucketLevelAccess.enabled from true to false in RFC 3339  format. iamConfiguration.uniformBucketLevelAccess.enabled may be changed from true to false until the locked time, after which the field is immutable.
  final String lockedTime;

  /// Creates a new [BucketIamConfigurationUniformBucketLevelAccessResponse].
  /// [enabled] If set, access is controlled only by bucket-level or above IAM policies.
  /// [lockedTime] The deadline for changing iamConfiguration.uniformBucketLevelAccess.enabled from true to false in RFC 3339  format. iamConfiguration.uniformBucketLevelAccess.enabled may be changed from true to false until the locked time, after which the field is immutable.
  BucketIamConfigurationUniformBucketLevelAccessResponse({
    required this.enabled,
    required this.lockedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'lockedTime': lockedTime,
    };
  }

  factory BucketIamConfigurationUniformBucketLevelAccessResponse.fromMap(Map<String, dynamic> map) {
    return BucketIamConfigurationUniformBucketLevelAccessResponse(
      enabled: map['enabled'] as bool,
      lockedTime: map['lockedTime'] as String,
    );
  }
}

