// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_bucket_iam_policy_args_doc}
/// Arguments for getBucketIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_bucket_iam_policy_args_doc}
class GetBucketIamPolicyArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetBucketIamPolicyArgs].
  /// [bucket] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [userProject] Optional.
  GetBucketIamPolicyArgs({
    required this.bucket,
    this.optionsRequestedPolicyVersion,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'userProject': ?userProject,
    };
  }

  factory GetBucketIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketIamPolicyArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      userProject: (() {
        final guardedValue = map['userProject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
