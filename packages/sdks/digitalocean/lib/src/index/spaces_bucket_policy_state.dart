// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpacesBucketPolicy resources.
class SpacesBucketPolicyState {
  /// The name of the bucket to which to apply the policy.
  final pulumi.Input<String>? bucket;
  /// The text of the policy.
  final pulumi.Input<String>? policy;
  /// The region where the bucket resides.
  final pulumi.Input<String>? region;

  /// Creates a new [SpacesBucketPolicyState].
  /// [bucket] The name of the bucket to which to apply the policy.
  /// [policy] The text of the policy.
  /// [region] The region where the bucket resides.
  SpacesBucketPolicyState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory SpacesBucketPolicyState.fromMap(Map<String, dynamic> map) {
    return SpacesBucketPolicyState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

