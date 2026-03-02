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
    this.bucket,
    this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory SpacesBucketPolicyState.fromMap(Map<String, dynamic> map) {
    return SpacesBucketPolicyState(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

