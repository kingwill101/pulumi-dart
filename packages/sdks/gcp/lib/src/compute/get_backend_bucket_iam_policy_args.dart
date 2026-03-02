// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_backend_bucket_iam_policy_get_backend_bucket_iam_policy_args_doc}
/// Arguments for getBackendBucketIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_backend_bucket_iam_policy_get_backend_bucket_iam_policy_args_doc}
class GetBackendBucketIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackendBucketIamPolicyArgs].
  /// [name] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  GetBackendBucketIamPolicyArgs({
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetBackendBucketIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendBucketIamPolicyArgs(
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

