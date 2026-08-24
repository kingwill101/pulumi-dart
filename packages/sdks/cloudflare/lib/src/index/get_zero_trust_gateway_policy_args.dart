// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_gateway_policy_get_zero_trust_gateway_policy_args_doc}
/// Arguments for getZeroTrustGatewayPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_gateway_policy_get_zero_trust_gateway_policy_args_doc}
class GetZeroTrustGatewayPolicyArgs {
  final pulumi.Input<String?>? accountId;
  /// Identify the API resource with a UUID.
  final pulumi.Input<String> ruleId;

  /// Creates a new [GetZeroTrustGatewayPolicyArgs].
  /// [accountId] Optional.
  /// [ruleId] Identify the API resource with a UUID.
  const GetZeroTrustGatewayPolicyArgs({
    this.accountId,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'ruleId': ruleId,
    };
  }

  factory GetZeroTrustGatewayPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
    );
  }
}
