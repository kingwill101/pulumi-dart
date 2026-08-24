// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dex_rules_result.dart';

/// Result data returned by getZeroTrustDexRules.
class GetZeroTrustDexRulesInvokeResult {
  /// Unique identifier linked to an account.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter results by rule name.
  final String? name;
  /// The items returned by the data source
  final List<GetZeroTrustDexRulesResult>? results;
  /// Which property to sort results by.
  /// Available values: "name", "created*at", "updated*at".
  final String? sortBy;
  /// Sort direction for sortBy property.
  /// Available values: "ASC", "DESC".
  final String? sortOrder;

  /// Creates a new [GetZeroTrustDexRulesInvokeResult].
  /// [accountId] Unique identifier linked to an account.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter results by rule name.
  /// [results] The items returned by the data source
  /// [sortBy] Which property to sort results by.
  /// [sortOrder] Sort direction for sortBy property.
  const GetZeroTrustDexRulesInvokeResult({
    this.accountId,
    this.maxItems,
    this.name,
    this.results,
    this.sortBy,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'name': ?name,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDexRulesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetZeroTrustDexRulesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexRulesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDexRulesResult>(guardedValue, (value) => GetZeroTrustDexRulesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      sortBy: (() { final guardedValue = map['sortBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
