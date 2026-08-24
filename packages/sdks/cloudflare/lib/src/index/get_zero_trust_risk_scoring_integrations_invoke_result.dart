// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_risk_scoring_integrations_result.dart';

/// Result data returned by getZeroTrustRiskScoringIntegrations.
class GetZeroTrustRiskScoringIntegrationsInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustRiskScoringIntegrationsResult>? results;

  /// Creates a new [GetZeroTrustRiskScoringIntegrationsInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetZeroTrustRiskScoringIntegrationsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustRiskScoringIntegrationsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustRiskScoringIntegrationsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustRiskScoringIntegrationsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustRiskScoringIntegrationsResult>(guardedValue, (value) => GetZeroTrustRiskScoringIntegrationsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
