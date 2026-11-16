// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_policy_find_one_by.dart';

/// {@template pulumi_index_get_zero_trust_cws_policy_get_zero_trust_cws_policy_args_doc}
/// Arguments for getZeroTrustCwsPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_policy_get_zero_trust_cws_policy_args_doc}
class GetZeroTrustCwsPolicyArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetZeroTrustCwsPolicyFindOneBy?>? findOneBy;
  /// ID of the policy to retrieve
  final pulumi.Input<String?>? policyId;

  /// Creates a new [GetZeroTrustCwsPolicyArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [findOneBy] Optional.
  /// [policyId] ID of the policy to retrieve
  const GetZeroTrustCwsPolicyArgs({
    required this.accountId,
    this.findOneBy,
    this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'findOneBy': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustCwsPolicyFindOneBy, Map<String, dynamic>>(findOneBy, (value) => value.toMap()),
      'policyId': ?policyId,
    };
  }

  factory GetZeroTrustCwsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsPolicyArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      findOneBy: (() { final guardedValue = map['findOneBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustCwsPolicyFindOneBy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
