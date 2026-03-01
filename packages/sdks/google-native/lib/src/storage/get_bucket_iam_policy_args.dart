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
    required pulumi.Output<String> bucket,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? userProject,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'userProject': ?userProject,
    };
  }

  factory GetBucketIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketIamPolicyArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      userProject: map['userProject'] == null ? null : pulumi.Output.create<String>(map['userProject'] as String),
    );
  }
}

