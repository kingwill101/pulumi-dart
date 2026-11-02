// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dns_locations_result.dart';

/// Result data returned by getZeroTrustDnsLocations.
class GetZeroTrustDnsLocationsInvokeResult {
  final String? accountId;
  final String? direction;
  final List<String>? filters;
  final int? maxItems;
  final String? orderBy;
  final List<GetZeroTrustDnsLocationsResult>? results;
  final String? search;

  /// Creates a new [GetZeroTrustDnsLocationsInvokeResult].
  /// [accountId] Optional.
  /// [direction] Optional.
  /// [filters] Optional.
  /// [maxItems] Optional.
  /// [orderBy] Optional.
  /// [results] Optional.
  /// [search] Optional.
  const GetZeroTrustDnsLocationsInvokeResult({
    this.accountId,
    this.direction,
    this.filters,
    this.maxItems,
    this.orderBy,
    this.results,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'filters': ?filters,
      'maxItems': ?maxItems,
      'orderBy': ?orderBy,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDnsLocationsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
    };
  }

  factory GetZeroTrustDnsLocationsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDnsLocationsResult>(guardedValue, (value) => GetZeroTrustDnsLocationsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
