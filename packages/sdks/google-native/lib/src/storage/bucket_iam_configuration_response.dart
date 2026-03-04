// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_iam_configuration_bucket_policy_only_response.dart';
import 'bucket_iam_configuration_uniform_bucket_level_access_response.dart';

/// The bucket's IAM configuration.
class BucketIamConfigurationResponse {
  /// The bucket's uniform bucket-level access configuration. The feature was formerly known as Bucket Policy Only. For backward compatibility, this field will be populated with identical information as the uniformBucketLevelAccess field. We recommend using the uniformBucketLevelAccess field to enable and disable the feature.
  final pulumi.Input<BucketIamConfigurationBucketPolicyOnlyResponse>
  bucketPolicyOnly;

  /// The bucket's Public Access Prevention configuration. Currently, 'inherited' and 'enforced' are supported.
  final pulumi.Input<String> publicAccessPrevention;

  /// The bucket's uniform bucket-level access configuration.
  final pulumi.Input<BucketIamConfigurationUniformBucketLevelAccessResponse>
  uniformBucketLevelAccess;

  /// Creates a new [BucketIamConfigurationResponse].
  /// [bucketPolicyOnly] The bucket's uniform bucket-level access configuration. The feature was formerly known as Bucket Policy Only. For backward compatibility, this field will be populated with identical information as the uniformBucketLevelAccess field. We recommend using the uniformBucketLevelAccess field to enable and disable the feature.
  /// [publicAccessPrevention] The bucket's Public Access Prevention configuration. Currently, 'inherited' and 'enforced' are supported.
  /// [uniformBucketLevelAccess] The bucket's uniform bucket-level access configuration.
  BucketIamConfigurationResponse({
    required this.bucketPolicyOnly,
    required this.publicAccessPrevention,
    required this.uniformBucketLevelAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketPolicyOnly':
          pulumi.Input.mapInputValue<
            BucketIamConfigurationBucketPolicyOnlyResponse,
            Map<String, dynamic>
          >(bucketPolicyOnly, (value) => value.toMap()),
      'publicAccessPrevention': publicAccessPrevention,
      'uniformBucketLevelAccess':
          pulumi.Input.mapInputValue<
            BucketIamConfigurationUniformBucketLevelAccessResponse,
            Map<String, dynamic>
          >(uniformBucketLevelAccess, (value) => value.toMap()),
    };
  }

  factory BucketIamConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BucketIamConfigurationResponse(
      bucketPolicyOnly: pulumi.Input.fromValue(
        BucketIamConfigurationBucketPolicyOnlyResponse.fromMap(
          (map['bucketPolicyOnly']! as Map).cast<String, dynamic>(),
        ),
      ),
      publicAccessPrevention: pulumi.Input.fromValue(
        map['publicAccessPrevention'] as String,
      ),
      uniformBucketLevelAccess: pulumi.Input.fromValue(
        BucketIamConfigurationUniformBucketLevelAccessResponse.fromMap(
          (map['uniformBucketLevelAccess']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
