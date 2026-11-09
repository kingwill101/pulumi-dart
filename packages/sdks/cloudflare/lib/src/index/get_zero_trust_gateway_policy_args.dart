// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_gateway_policy_filter.dart';

/// {@template pulumi_index_get_zero_trust_gateway_policy_get_zero_trust_gateway_policy_args_doc}
/// Arguments for getZeroTrustGatewayPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_gateway_policy_get_zero_trust_gateway_policy_args_doc}
class GetZeroTrustGatewayPolicyArgs {
  /// Specify the Cloudflare account identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustGatewayPolicyFilter?>? filter;
  /// Identify the API resource with a UUID.
  final pulumi.Input<String?>? ruleId;

  /// Creates a new [GetZeroTrustGatewayPolicyArgs].
  /// [accountId] Specify the Cloudflare account identifier.
  /// [filter] Optional.
  /// [ruleId] Identify the API resource with a UUID.
  const GetZeroTrustGatewayPolicyArgs({
    this.accountId,
    this.filter,
    this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustGatewayPolicyFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'ruleId': ?ruleId,
    };
  }

  factory GetZeroTrustGatewayPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustGatewayPolicyFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
