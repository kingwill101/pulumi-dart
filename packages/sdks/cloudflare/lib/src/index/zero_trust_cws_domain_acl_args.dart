// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_cws_domain_acl_entry.dart';

/// {@template pulumi_index_zero_trust_cws_domain_acl_zero_trust_cws_domain_acl_args_doc}
/// The set of arguments for ZeroTrustCwsDomainAcl.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_cws_domain_acl_zero_trust_cws_domain_acl_args_doc}
class ZeroTrustCwsDomainAclArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Default action when no entry matches
  /// Available values: "ALLOW", "BLOCK".
  final pulumi.Input<String> defaultAction;
  /// Domain entries for this ACL. Each domain must appear at most once.
  final pulumi.Input<List<ZeroTrustCwsDomainAclEntry>> entries;
  /// Name of the domain ACL
  final pulumi.Input<String> name;

  /// Creates a new [ZeroTrustCwsDomainAclArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [defaultAction] Default action when no entry matches
  /// [entries] Domain entries for this ACL. Each domain must appear at most once.
  /// [name] Name of the domain ACL
  const ZeroTrustCwsDomainAclArgs({
    required this.accountId,
    required this.defaultAction,
    required this.entries,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'defaultAction': defaultAction,
      'entries': pulumi.Input.mapInputValue<List<ZeroTrustCwsDomainAclEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<ZeroTrustCwsDomainAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory ZeroTrustCwsDomainAclArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsDomainAclArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      entries: pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustCwsDomainAclEntry>(map['entries']!, (value) => ZeroTrustCwsDomainAclEntry.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
