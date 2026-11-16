// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_domain_acls_result_entry.dart';

class GetZeroTrustCwsDomainAclsResult {
  final pulumi.Input<String> createdAt;
  /// Action applied when no entry matches the request domain
  /// Available values: "ALLOW", "BLOCK".
  final pulumi.Input<String> defaultAction;
  /// Per-domain action overrides. Each domain appears at most once.
  final pulumi.Input<List<GetZeroTrustCwsDomainAclsResultEntry>> entries;
  /// Server-assigned UUID
  final pulumi.Input<String> id;
  /// Human-readable name; unique per account
  final pulumi.Input<String> name;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustCwsDomainAclsResult].
  /// [createdAt] Required.
  /// [defaultAction] Action applied when no entry matches the request domain
  /// [entries] Per-domain action overrides. Each domain appears at most once.
  /// [id] Server-assigned UUID
  /// [name] Human-readable name; unique per account
  /// [updatedAt] Required.
  const GetZeroTrustCwsDomainAclsResult({
    required this.createdAt,
    required this.defaultAction,
    required this.entries,
    required this.id,
    required this.name,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'defaultAction': defaultAction,
      'entries': pulumi.Input.mapInputValue<List<GetZeroTrustCwsDomainAclsResultEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<GetZeroTrustCwsDomainAclsResultEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'name': name,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustCwsDomainAclsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsDomainAclsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      entries: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustCwsDomainAclsResultEntry>(map['entries']!, (value) => GetZeroTrustCwsDomainAclsResultEntry.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
