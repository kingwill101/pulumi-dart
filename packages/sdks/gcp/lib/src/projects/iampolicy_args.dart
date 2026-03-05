// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_i_ampolicy_iampolicy_args_doc}
/// The set of arguments for IAMPolicy.
/// {@endtemplate}
/// {@macro pulumi_projects_i_ampolicy_iampolicy_args_doc}
class IAMPolicyArgs {
  /// The `gcp.organizations.getIAMPolicy` data source that represents
  /// the IAM policy that will be applied to the project. The policy will be
  /// merged with any existing policy applied to the project.
  ///
  /// Changing this updates the policy.
  ///
  /// Deleting this removes all policies from the project, locking out users without
  /// organization-level access.
  final pulumi.Input<String> policyData;
  /// The project id of the target project. This is not
  /// inferred from the provider.
  final pulumi.Input<String> project;

  /// Creates a new [IAMPolicyArgs].
  /// [policyData] The `gcp.organizations.getIAMPolicy` data source that represents
  /// [project] The project id of the target project. This is not
  IAMPolicyArgs({
    required this.policyData,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyData': policyData,
      'project': project,
    };
  }

  factory IAMPolicyArgs.fromMap(Map<String, dynamic> map) {
    return IAMPolicyArgs(
      policyData: pulumi.Input.fromValue(map['policyData'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}

