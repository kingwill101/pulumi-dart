// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_policy_set_filter.dart';

/// {@template pulumi_index_get_zero_trust_cws_policy_set_get_zero_trust_cws_policy_set_args_doc}
/// Arguments for getZeroTrustCwsPolicySet.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_policy_set_get_zero_trust_cws_policy_set_args_doc}
class GetZeroTrustCwsPolicySetArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetZeroTrustCwsPolicySetFilter?>? filter;
  /// ID of the policy set to retrieve
  final pulumi.Input<String?>? policySetId;

  /// Creates a new [GetZeroTrustCwsPolicySetArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [filter] Optional.
  /// [policySetId] ID of the policy set to retrieve
  const GetZeroTrustCwsPolicySetArgs({
    required this.accountId,
    this.filter,
    this.policySetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustCwsPolicySetFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'policySetId': ?policySetId,
    };
  }

  factory GetZeroTrustCwsPolicySetArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsPolicySetArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustCwsPolicySetFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policySetId: (() { final guardedValue = map['policySetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
