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
  SpacesBucketPolicyArgs({
    required pulumi.Output<String> bucket,
    required pulumi.Output<String> policy,
    required pulumi.Output<String> region,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      policy = pulumi.Input.asInput<String>(policy),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'policy': policy,
      'region': region,
    };
  }

  factory SpacesBucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SpacesBucketPolicyArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      policy: pulumi.Output.create<String>(map['policy'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

