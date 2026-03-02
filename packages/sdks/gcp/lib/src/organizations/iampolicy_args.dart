// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_i_ampolicy_iampolicy_args_doc}
/// The set of arguments for IAMPolicy.
/// {@endtemplate}
/// {@macro pulumi_organizations_i_ampolicy_iampolicy_args_doc}
class IAMPolicyArgs {
  /// The organization id of the target organization.
  final pulumi.Input<String> orgId;
  /// The `gcp.organizations.getIAMPolicy` data source that represents
  /// the IAM policy that will be applied to the organization. The policy will be
  /// merged with any existing policy applied to the organization.
  ///
  /// Changing this updates the policy.
  ///
  /// Deleting this removes all policies from the organization, locking out users without
  /// organization-level access.
  final pulumi.Input<String> policyData;

  /// Creates a new [IAMPolicyArgs].
  /// [orgId] The organization id of the target organization.
  /// [policyData] The `gcp.organizations.getIAMPolicy` data source that represents
  IAMPolicyArgs({
    required this.orgId,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orgId': orgId,
      'policyData': policyData,
    };
  }

  factory IAMPolicyArgs.fromMap(Map<String, dynamic> map) {
    return IAMPolicyArgs(
      orgId: (map['orgId'] as String).input(),
      policyData: (map['policyData'] as String).input(),
    );
  }
}

