// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's uniform bucket-level access configuration.
class BucketIamConfigurationUniformBucketLevelAccessResponse {
  /// If set, access is controlled only by bucket-level or above IAM policies.
  final pulumi.Input<bool> enabled;

  /// The deadline for changing iamConfiguration.uniformBucketLevelAccess.enabled from true to false in RFC 3339  format. iamConfiguration.uniformBucketLevelAccess.enabled may be changed from true to false until the locked time, after which the field is immutable.
  final pulumi.Input<String> lockedTime;

  /// Creates a new [BucketIamConfigurationUniformBucketLevelAccessResponse].
  /// [enabled] If set, access is controlled only by bucket-level or above IAM policies.
  /// [lockedTime] The deadline for changing iamConfiguration.uniformBucketLevelAccess.enabled from true to false in RFC 3339  format. iamConfiguration.uniformBucketLevelAccess.enabled may be changed from true to false until the locked time, after which the field is immutable.
  BucketIamConfigurationUniformBucketLevelAccessResponse({
    required this.enabled,
    required this.lockedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'lockedTime': lockedTime};
  }

  factory BucketIamConfigurationUniformBucketLevelAccessResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketIamConfigurationUniformBucketLevelAccessResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      lockedTime: pulumi.Input.fromValue(map['lockedTime'] as String),
    );
  }
}
