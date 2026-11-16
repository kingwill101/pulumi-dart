// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_policy_sets_result.dart';

/// Result data returned by getZeroTrustCwsPolicySets.
class GetZeroTrustCwsPolicySetsInvokeResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  /// Filter to policy sets attached to this deployment
  final String? deploymentId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter by policy set name (case-insensitive substring match)
  final String? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final String? order;
  /// The items returned by the data source
  final List<GetZeroTrustCwsPolicySetsResult>? results;

  /// Creates a new [GetZeroTrustCwsPolicySetsInvokeResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [deploymentId] Filter to policy sets attached to this deployment
  /// [direction] Sort direction (default: asc)
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by policy set name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  /// [results] The items returned by the data source
  const GetZeroTrustCwsPolicySetsInvokeResult({
    this.accountId,
    this.deploymentId,
    this.direction,
    this.maxItems,
    this.name,
    this.order,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'deploymentId': ?deploymentId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'name': ?name,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustCwsPolicySetsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustCwsPolicySetsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsPolicySetsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustCwsPolicySetsResult>(guardedValue, (value) => GetZeroTrustCwsPolicySetsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
