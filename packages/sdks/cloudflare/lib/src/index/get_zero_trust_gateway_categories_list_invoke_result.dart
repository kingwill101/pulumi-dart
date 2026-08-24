// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_gateway_categories_list_result.dart';

/// Result data returned by getZeroTrustGatewayCategoriesList.
class GetZeroTrustGatewayCategoriesListInvokeResult {
  /// Provide the identifier string.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustGatewayCategoriesListResult>? results;

  /// Creates a new [GetZeroTrustGatewayCategoriesListInvokeResult].
  /// [accountId] Provide the identifier string.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetZeroTrustGatewayCategoriesListInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustGatewayCategoriesListResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustGatewayCategoriesListInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayCategoriesListInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustGatewayCategoriesListResult>(guardedValue, (value) => GetZeroTrustGatewayCategoriesListResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
