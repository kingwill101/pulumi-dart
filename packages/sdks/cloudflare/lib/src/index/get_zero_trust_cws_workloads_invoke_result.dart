// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_workloads_result.dart';

/// Result data returned by getZeroTrustCwsWorkloads.
class GetZeroTrustCwsWorkloadsInvokeResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter by workload name (case-insensitive substring match)
  final String? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final String? order;
  /// Filter to workloads attached to this policy set
  final String? policySetId;
  /// The items returned by the data source
  final List<GetZeroTrustCwsWorkloadsResult>? results;

  /// Creates a new [GetZeroTrustCwsWorkloadsInvokeResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [direction] Sort direction (default: asc)
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by workload name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  /// [policySetId] Filter to workloads attached to this policy set
  /// [results] The items returned by the data source
  const GetZeroTrustCwsWorkloadsInvokeResult({
    this.accountId,
    this.direction,
    this.maxItems,
    this.name,
    this.order,
    this.policySetId,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'name': ?name,
      'order': ?order,
      'policySetId': ?policySetId,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustCwsWorkloadsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustCwsWorkloadsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsWorkloadsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policySetId: (() { final guardedValue = map['policySetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustCwsWorkloadsResult>(guardedValue, (value) => GetZeroTrustCwsWorkloadsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
