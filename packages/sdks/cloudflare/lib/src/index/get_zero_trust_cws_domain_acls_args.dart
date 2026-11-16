// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_cws_domain_acls_get_zero_trust_cws_domain_acls_args_doc}
/// Arguments for getZeroTrustCwsDomainAcls.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_domain_acls_get_zero_trust_cws_domain_acls_args_doc}
class GetZeroTrustCwsDomainAclsArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Filter to domain ACLs attached to this deployment
  final pulumi.Input<String?>? deploymentId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter by domain ACL name (case-insensitive substring match)
  final pulumi.Input<String?>? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final pulumi.Input<String?>? order;

  /// Creates a new [GetZeroTrustCwsDomainAclsArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [deploymentId] Filter to domain ACLs attached to this deployment
  /// [direction] Sort direction (default: asc)
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by domain ACL name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  const GetZeroTrustCwsDomainAclsArgs({
    required this.accountId,
    this.deploymentId,
    this.direction,
    this.maxItems,
    this.name,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'deploymentId': ?deploymentId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'name': ?name,
      'order': ?order,
    };
  }

  factory GetZeroTrustCwsDomainAclsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsDomainAclsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
