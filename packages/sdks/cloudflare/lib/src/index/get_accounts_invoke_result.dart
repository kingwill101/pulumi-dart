// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_result.dart';

/// Result data returned by getAccounts.
class GetAccountsInvokeResult {
  /// Direction to order results.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Name of the account.
  final String? name;
  /// The items returned by the data source
  final List<GetAccountsResult>? results;

  /// Creates a new [GetAccountsInvokeResult].
  /// [direction] Direction to order results.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Name of the account.
  /// [results] The items returned by the data source
  const GetAccountsInvokeResult({
    this.direction,
    this.maxItems,
    this.name,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'maxItems': ?maxItems,
      'name': ?name,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAccountsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetAccountsInvokeResult(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountsResult>(guardedValue, (value) => GetAccountsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
