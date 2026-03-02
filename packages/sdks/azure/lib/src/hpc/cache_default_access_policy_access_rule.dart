// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CacheDefaultAccessPolicyAccessRule {
  /// The access level for this rule. Possible values are: `rw`, `ro`, `no`.
  final pulumi.Input<String> access;
  /// The anonymous GID used when `root_squash_enabled` is `true`.
  final pulumi.Input<int>? anonymousGid;
  /// The anonymous UID used when `root_squash_enabled` is `true`.
  final pulumi.Input<int>? anonymousUid;
  /// The filter applied to the `scope` for this rule. The filter's format depends on its scope: `default` scope matches all clients and has no filter value; `network` scope takes a CIDR format; `host` takes an IP address or fully qualified domain name. If a client does not match any filter rule and there is no default rule, access is denied.
  final pulumi.Input<String>? filter;
  /// Whether to enable [root squash](https://docs.microsoft.com/azure/hpc-cache/access-policies#root-squash)?
  final pulumi.Input<bool>? rootSquashEnabled;
  /// The scope of this rule. The `scope` and (potentially) the `filter` determine which clients match the rule. Possible values are: `default`, `network`, `host`.
  ///
  /// > **Note:** Each `access_rule` should set a unique `scope`.
  final pulumi.Input<String> scope;
  /// Whether allow access to subdirectories under the root export?
  final pulumi.Input<bool>? submountAccessEnabled;
  /// Whether [SUID](https://docs.microsoft.com/azure/hpc-cache/access-policies#suid) is allowed?
  final pulumi.Input<bool>? suidEnabled;

  /// Creates a new [CacheDefaultAccessPolicyAccessRule].
  /// [access] The access level for this rule. Possible values are: `rw`, `ro`, `no`.
  /// [anonymousGid] The anonymous GID used when `root_squash_enabled` is `true`.
  /// [anonymousUid] The anonymous UID used when `root_squash_enabled` is `true`.
  /// [filter] The filter applied to the `scope` for this rule. The filter's format depends on its scope: `default` scope matches all clients and has no filter value; `network` scope takes a CIDR format; `host` takes an IP address or fully qualified domain name. If a client does not match any filter rule and there is no default rule, access is denied.
  /// [rootSquashEnabled] Whether to enable [root squash](https://docs.microsoft.com/azure/hpc-cache/access-policies#root-squash)?
  /// [scope] The scope of this rule. The `scope` and (potentially) the `filter` determine which clients match the rule. Possible values are: `default`, `network`, `host`.
  /// [submountAccessEnabled] Whether allow access to subdirectories under the root export?
  /// [suidEnabled] Whether [SUID](https://docs.microsoft.com/azure/hpc-cache/access-policies#suid) is allowed?
  CacheDefaultAccessPolicyAccessRule({
    required this.access,
    this.anonymousGid,
    this.anonymousUid,
    this.filter,
    this.rootSquashEnabled,
    required this.scope,
    this.submountAccessEnabled,
    this.suidEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'anonymousGid': ?anonymousGid,
      'anonymousUid': ?anonymousUid,
      'filter': ?filter,
      'rootSquashEnabled': ?rootSquashEnabled,
      'scope': scope,
      'submountAccessEnabled': ?submountAccessEnabled,
      'suidEnabled': ?suidEnabled,
    };
  }

  factory CacheDefaultAccessPolicyAccessRule.fromMap(Map<String, dynamic> map) {
    return CacheDefaultAccessPolicyAccessRule(
      access: (map['access'] as String).input(),
      anonymousGid: map['anonymousGid'] == null ? null : (map['anonymousGid']! as int).input(),
      anonymousUid: map['anonymousUid'] == null ? null : (map['anonymousUid']! as int).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      rootSquashEnabled: map['rootSquashEnabled'] == null ? null : (map['rootSquashEnabled']! as bool).input(),
      scope: (map['scope'] as String).input(),
      submountAccessEnabled: map['submountAccessEnabled'] == null ? null : (map['submountAccessEnabled']! as bool).input(),
      suidEnabled: map['suidEnabled'] == null ? null : (map['suidEnabled']! as bool).input(),
    );
  }
}

