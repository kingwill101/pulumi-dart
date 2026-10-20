// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_casb_policy_get_zero_trust_casb_policy_args_doc}
/// Arguments for getZeroTrustCasbPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_casb_policy_get_zero_trust_casb_policy_args_doc}
class GetZeroTrustCasbPolicyArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> policyId;

  /// Creates a new [GetZeroTrustCasbPolicyArgs].
  /// [accountId] Required.
  /// [policyId] Required.
  const GetZeroTrustCasbPolicyArgs({
    required this.accountId,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'policyId': policyId,
    };
  }

  factory GetZeroTrustCasbPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbPolicyArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
