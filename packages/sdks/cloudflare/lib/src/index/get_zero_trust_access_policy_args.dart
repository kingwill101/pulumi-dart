// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_access_policy_get_zero_trust_access_policy_args_doc}
/// Arguments for getZeroTrustAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_policy_get_zero_trust_access_policy_args_doc}
class GetZeroTrustAccessPolicyArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The UUID of the policy
  final pulumi.Input<String> policyId;

  /// Creates a new [GetZeroTrustAccessPolicyArgs].
  /// [accountId] Identifier.
  /// [policyId] The UUID of the policy
  const GetZeroTrustAccessPolicyArgs({
    this.accountId,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'policyId': policyId,
    };
  }

  factory GetZeroTrustAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
