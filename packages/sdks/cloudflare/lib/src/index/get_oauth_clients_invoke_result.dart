// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_oauth_clients_result.dart';

/// Result data returned by getOauthClients.
class GetOauthClientsInvokeResult {
  /// Account identifier tag.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetOauthClientsResult>? results;

  /// Creates a new [GetOauthClientsInvokeResult].
  /// [accountId] Account identifier tag.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetOauthClientsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOauthClientsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetOauthClientsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetOauthClientsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOauthClientsResult>(guardedValue, (value) => GetOauthClientsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
