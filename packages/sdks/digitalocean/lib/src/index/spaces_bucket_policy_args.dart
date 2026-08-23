// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_spaces_bucket_policy_spaces_bucket_policy_args_doc}
/// The set of arguments for SpacesBucketPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_spaces_bucket_policy_spaces_bucket_policy_args_doc}
class SpacesBucketPolicyArgs {
  /// The name of the bucket to which to apply the policy.
  final pulumi.Input<String> bucket;
  /// The text of the policy.
  final pulumi.Input<String> policy;
  /// The region where the bucket resides.
  final pulumi.Input<String> region;

  /// Creates a new [SpacesBucketPolicyArgs].
  /// [bucket] The name of the bucket to which to apply the policy.
  /// [policy] The text of the policy.
  /// [region] The region where the bucket resides.
  const SpacesBucketPolicyArgs({
    required this.bucket,
    required this.policy,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'policy': policy,
      'region': region,
    };
  }

  factory SpacesBucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SpacesBucketPolicyArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
