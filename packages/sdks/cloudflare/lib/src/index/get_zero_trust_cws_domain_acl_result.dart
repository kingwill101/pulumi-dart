// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_domain_acl_entry.dart';
import 'get_zero_trust_cws_domain_acl_filter.dart';

/// Result data returned by getZeroTrustCwsDomainAcl.
class GetZeroTrustCwsDomainAclResult {
  /// Cloudflare account ID (32-character hexadecimal string)
  final String? accountId;
  final String? createdAt;
  /// Action applied when no entry matches the request domain
  /// Available values: "ALLOW", "BLOCK".
  final String? defaultAction;
  /// ID of the domain ACL to retrieve
  final String? domainAclId;
  /// Per-domain action overrides. Each domain appears at most once.
  final List<GetZeroTrustCwsDomainAclEntry>? entries;
  final GetZeroTrustCwsDomainAclFilter? filter;
  /// ID of the domain ACL to retrieve
  final String? id;
  /// Human-readable name; unique per account
  final String? name;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustCwsDomainAclResult].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [defaultAction] Action applied when no entry matches the request domain
  /// [domainAclId] ID of the domain ACL to retrieve
  /// [entries] Per-domain action overrides. Each domain appears at most once.
  /// [filter] Optional.
  /// [id] ID of the domain ACL to retrieve
  /// [name] Human-readable name; unique per account
  /// [updatedAt] Optional.
  const GetZeroTrustCwsDomainAclResult({
    this.accountId,
    this.createdAt,
    this.defaultAction,
    this.domainAclId,
    this.entries,
    this.filter,
    this.id,
    this.name,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'defaultAction': ?defaultAction,
      'domainAclId': ?domainAclId,
      'entries': ?(() { final guardedValue = entries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustCwsDomainAclEntry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filter': ?filter?.toMap(),
      'id': ?id,
      'name': ?name,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustCwsDomainAclResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsDomainAclResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainAclId: (() { final guardedValue = map['domainAclId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustCwsDomainAclEntry>(guardedValue, (value) => GetZeroTrustCwsDomainAclEntry.fromMap((value as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustCwsDomainAclFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
