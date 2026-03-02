// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_binaryauthorization_get_attestor_iam_policy_get_attestor_iam_policy_args_doc}
/// Arguments for getAttestorIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_get_attestor_iam_policy_get_attestor_iam_policy_args_doc}
class GetAttestorIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> attestor;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAttestorIamPolicyArgs].
  /// [attestor] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  GetAttestorIamPolicyArgs({
    required this.attestor,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestor': attestor,
      'project': ?project,
    };
  }

  factory GetAttestorIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAttestorIamPolicyArgs(
      attestor: (map['attestor'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

