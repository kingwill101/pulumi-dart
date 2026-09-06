// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rule to place restrictions on portions of the cache namespace being presented to clients.
class NfsAccessRuleResponse {
  /// Access allowed by this rule.
  final pulumi.Input<String> access;
  /// GID value that replaces 0 when rootSquash is true. This will use the value of anonymousUID if not provided.
  final pulumi.Input<String?>? anonymousGID;
  /// UID value that replaces 0 when rootSquash is true. 65534 will be used if not provided.
  final pulumi.Input<String?>? anonymousUID;
  /// Filter applied to the scope for this rule. The filter's format depends on its scope. 'default' scope matches all clients and has no filter value. 'network' scope takes a filter in CIDR format (for example, 10.99.1.0/24). 'host' takes an IP address or fully qualified domain name as filter. If a client does not match any filter rule and there is no default rule, access is denied.
  final pulumi.Input<String?>? filter;
  /// Map root accesses to anonymousUID and anonymousGID.
  final pulumi.Input<bool?>? rootSquash;
  /// Scope for this rule. The scope and filter determine which clients match the rule.
  final pulumi.Input<String> scope;
  /// For the default policy, allow access to subdirectories under the root export. If this is set to no, clients can only mount the path '/'. If set to yes, clients can mount a deeper path, like '/a/b'.
  final pulumi.Input<bool?>? submountAccess;
  /// Allow SUID semantics.
  final pulumi.Input<bool?>? suid;

  /// Creates a new [NfsAccessRuleResponse].
  /// [access] Access allowed by this rule.
  /// [anonymousGID] GID value that replaces 0 when rootSquash is true. This will use the value of anonymousUID if not provided.
  /// [anonymousUID] UID value that replaces 0 when rootSquash is true. 65534 will be used if not provided.
  /// [filter] Filter applied to the scope for this rule. The filter's format depends on its scope. 'default' scope matches all clients and has no filter value. 'network' scope takes a filter in CIDR format (for example, 10.99.1.0/24). 'host' takes an IP address or fully qualified domain name as filter. If a client does not match any filter rule and there is no default rule, access is denied.
  /// [rootSquash] Map root accesses to anonymousUID and anonymousGID.
  /// [scope] Scope for this rule. The scope and filter determine which clients match the rule.
  /// [submountAccess] For the default policy, allow access to subdirectories under the root export. If this is set to no, clients can only mount the path '/'. If set to yes, clients can mount a deeper path, like '/a/b'.
  /// [suid] Allow SUID semantics.
  const NfsAccessRuleResponse({
    required this.access,
    this.anonymousGID,
    this.anonymousUID,
    this.filter,
    this.rootSquash,
    required this.scope,
    this.submountAccess,
    this.suid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'anonymousGID': ?anonymousGID,
      'anonymousUID': ?anonymousUID,
      'filter': ?filter,
      'rootSquash': ?rootSquash,
      'scope': scope,
      'submountAccess': ?submountAccess,
      'suid': ?suid,
    };
  }

  factory NfsAccessRuleResponse.fromMap(Map<String, dynamic> map) {
    return NfsAccessRuleResponse(
      access: pulumi.Input.fromValue(map['access'] as String),
      anonymousGID: (() { final guardedValue = map['anonymousGID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      anonymousUID: (() { final guardedValue = map['anonymousUID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootSquash: (() { final guardedValue = map['rootSquash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      submountAccess: (() { final guardedValue = map['submountAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      suid: (() { final guardedValue = map['suid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
