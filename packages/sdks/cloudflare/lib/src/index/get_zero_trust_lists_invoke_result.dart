// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_lists_result.dart';

/// Result data returned by getZeroTrustLists.
class GetZeroTrustListsInvokeResult {
  final String? accountId;
  final String? direction;
  final List<String>? filters;
  final int? maxItems;
  final String? orderBy;
  final List<GetZeroTrustListsResult>? results;
  final String? search;
  final String? type;

  /// Creates a new [GetZeroTrustListsInvokeResult].
  /// [accountId] Optional.
  /// [direction] Optional.
  /// [filters] Optional.
  /// [maxItems] Optional.
  /// [orderBy] Optional.
  /// [results] Optional.
  /// [search] Optional.
  /// [type] Optional.
  const GetZeroTrustListsInvokeResult({
    this.accountId,
    this.direction,
    this.filters,
    this.maxItems,
    this.orderBy,
    this.results,
    this.search,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'filters': ?filters,
      'maxItems': ?maxItems,
      'orderBy': ?orderBy,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustListsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
      'type': ?type,
    };
  }

  factory GetZeroTrustListsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustListsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustListsResult>(guardedValue, (value) => GetZeroTrustListsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
