// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustCwsDomainAclsResultEntry {
  /// Per-domain decision overriding the parent ACL's defaultAction
  /// Available values: "ALLOW", "BLOCK".
  final pulumi.Input<String> action;
  /// Hostname or domain pattern, capped at 255 UTF-8 bytes
  final pulumi.Input<String> domain;

  /// Creates a new [GetZeroTrustCwsDomainAclsResultEntry].
  /// [action] Per-domain decision overriding the parent ACL's defaultAction
  /// [domain] Hostname or domain pattern, capped at 255 UTF-8 bytes
  const GetZeroTrustCwsDomainAclsResultEntry({
    required this.action,
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'domain': domain,
    };
  }

  factory GetZeroTrustCwsDomainAclsResultEntry.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsDomainAclsResultEntry(
      action: pulumi.Input.fromValue(map['action'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
