// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_domain_acl_entry.dart';

/// Input properties used for looking up and filtering ZeroTrustCwsDomainAcl resources.
class ZeroTrustCwsDomainAclState {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Default action when no entry matches
  /// Available values: "ALLOW", "BLOCK".
  final pulumi.Input<String?>? defaultAction;
  /// Domain entries for this ACL. Each domain must appear at most once.
  final pulumi.Input<List<ZeroTrustCwsDomainAclEntry>?>? entries;
  /// Name of the domain ACL
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustCwsDomainAclState].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [createdAt] Optional.
  /// [defaultAction] Default action when no entry matches
  /// [entries] Domain entries for this ACL. Each domain must appear at most once.
  /// [name] Name of the domain ACL
  /// [updatedAt] Optional.
  const ZeroTrustCwsDomainAclState({
    this.accountId,
    this.createdAt,
    this.defaultAction,
    this.entries,
    this.name,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'defaultAction': ?defaultAction,
      'entries': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustCwsDomainAclEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<ZeroTrustCwsDomainAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustCwsDomainAclState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsDomainAclState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustCwsDomainAclEntry>(guardedValue, (value) => ZeroTrustCwsDomainAclEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
