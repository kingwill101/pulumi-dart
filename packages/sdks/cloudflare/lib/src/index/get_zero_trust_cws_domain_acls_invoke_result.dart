// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_domain_acls_result.dart';

/// Result data returned by getZeroTrustCwsDomainAcls.
class GetZeroTrustCwsDomainAclsInvokeResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  /// Filter to domain ACLs attached to this deployment
  final String? deploymentId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter by domain ACL name (case-insensitive substring match)
  final String? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final String? order;
  /// The items returned by the data source
  final List<GetZeroTrustCwsDomainAclsResult>? results;

  /// Creates a new [GetZeroTrustCwsDomainAclsInvokeResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [deploymentId] Filter to domain ACLs attached to this deployment
  /// [direction] Sort direction (default: asc)
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by domain ACL name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  /// [results] The items returned by the data source
  const GetZeroTrustCwsDomainAclsInvokeResult({
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
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustCwsDomainAclsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustCwsDomainAclsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsDomainAclsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustCwsDomainAclsResult>(guardedValue, (value) => GetZeroTrustCwsDomainAclsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
