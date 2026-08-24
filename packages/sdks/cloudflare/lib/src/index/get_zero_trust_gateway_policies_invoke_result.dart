// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_gateway_policies_result.dart';

/// Result data returned by getZeroTrustGatewayPolicies.
class GetZeroTrustGatewayPoliciesInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustGatewayPoliciesResult>? results;

  /// Creates a new [GetZeroTrustGatewayPoliciesInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetZeroTrustGatewayPoliciesInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustGatewayPoliciesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustGatewayPoliciesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustGatewayPoliciesResult>(guardedValue, (value) => GetZeroTrustGatewayPoliciesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
