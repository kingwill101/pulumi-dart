// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_web_type_compute_iam_policy_get_web_type_compute_iam_policy_args_doc}
/// Arguments for getWebTypeComputeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_web_type_compute_iam_policy_get_web_type_compute_iam_policy_args_doc}
class GetWebTypeComputeIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetWebTypeComputeIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  GetWebTypeComputeIamPolicyArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory GetWebTypeComputeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWebTypeComputeIamPolicyArgs(
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

