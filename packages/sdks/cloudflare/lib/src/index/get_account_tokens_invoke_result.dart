// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_tokens_result.dart';

/// Result data returned by getAccountTokens.
class GetAccountTokensInvokeResult {
  /// Account identifier tag.
  final String? accountId;
  /// Direction to order results.
  /// Available values: "asc", "desc".
  final String? direction;
  /// When true, includes recently-expired tokens in the response.
  final bool? includeExpired;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetAccountTokensResult>? results;

  /// Creates a new [GetAccountTokensInvokeResult].
  /// [accountId] Account identifier tag.
  /// [direction] Direction to order results.
  /// [includeExpired] When true, includes recently-expired tokens in the response.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetAccountTokensInvokeResult({
    this.accountId,
    this.direction,
    this.includeExpired,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'includeExpired': ?includeExpired,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountTokensResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAccountTokensInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetAccountTokensInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeExpired: (() { final guardedValue = map['includeExpired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountTokensResult>(guardedValue, (value) => GetAccountTokensResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
