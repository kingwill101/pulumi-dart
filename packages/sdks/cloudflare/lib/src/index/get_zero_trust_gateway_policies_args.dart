// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_gateway_policies_get_zero_trust_gateway_policies_args_doc}
/// Arguments for getZeroTrustGatewayPolicies.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_gateway_policies_get_zero_trust_gateway_policies_args_doc}
class GetZeroTrustGatewayPoliciesArgs {
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetZeroTrustGatewayPoliciesArgs].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  const GetZeroTrustGatewayPoliciesArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetZeroTrustGatewayPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
