// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_workload_identity_pool_iam_policy_get_workload_identity_pool_iam_policy_args_doc}
/// Arguments for getWorkloadIdentityPoolIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_get_workload_identity_pool_iam_policy_get_workload_identity_pool_iam_policy_args_doc}
class GetWorkloadIdentityPoolIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> workloadIdentityPoolId;

  /// Creates a new [GetWorkloadIdentityPoolIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [workloadIdentityPoolId] Used to find the parent resource to bind the IAM policy to
  const GetWorkloadIdentityPoolIamPolicyArgs({
    this.project,
    required this.workloadIdentityPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'workloadIdentityPoolId': workloadIdentityPoolId,
    };
  }

  factory GetWorkloadIdentityPoolIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolIamPolicyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadIdentityPoolId: pulumi.Input.fromValue(map['workloadIdentityPoolId'] as String),
    );
  }
}
