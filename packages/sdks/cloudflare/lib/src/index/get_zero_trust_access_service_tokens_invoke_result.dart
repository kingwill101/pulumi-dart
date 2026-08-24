// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_service_tokens_result.dart';

/// Result data returned by getZeroTrustAccessServiceTokens.
class GetZeroTrustAccessServiceTokensInvokeResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The name of the service token.
  final String? name;
  /// The items returned by the data source
  final List<GetZeroTrustAccessServiceTokensResult>? results;
  /// Search for service tokens by other listed query parameters.
  final String? search;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetZeroTrustAccessServiceTokensInvokeResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] The name of the service token.
  /// [results] The items returned by the data source
  /// [search] Search for service tokens by other listed query parameters.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessServiceTokensInvokeResult({
    this.accountId,
    this.maxItems,
    this.name,
    this.results,
    this.search,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'name': ?name,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessServiceTokensResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessServiceTokensInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessServiceTokensInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessServiceTokensResult>(guardedValue, (value) => GetZeroTrustAccessServiceTokensResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
