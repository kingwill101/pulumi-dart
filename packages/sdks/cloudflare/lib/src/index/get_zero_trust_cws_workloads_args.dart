// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_cws_workloads_get_zero_trust_cws_workloads_args_doc}
/// Arguments for getZeroTrustCwsWorkloads.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_workloads_get_zero_trust_cws_workloads_args_doc}
class GetZeroTrustCwsWorkloadsArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter by workload name (case-insensitive substring match)
  final pulumi.Input<String?>? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final pulumi.Input<String?>? order;
  /// Filter to workloads attached to this policy set
  final pulumi.Input<String?>? policySetId;

  /// Creates a new [GetZeroTrustCwsWorkloadsArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [direction] Sort direction (default: asc)
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by workload name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  /// [policySetId] Filter to workloads attached to this policy set
  const GetZeroTrustCwsWorkloadsArgs({
    required this.accountId,
    this.direction,
    this.maxItems,
    this.name,
    this.order,
    this.policySetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'name': ?name,
      'order': ?order,
      'policySetId': ?policySetId,
    };
  }

  factory GetZeroTrustCwsWorkloadsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsWorkloadsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policySetId: (() { final guardedValue = map['policySetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
