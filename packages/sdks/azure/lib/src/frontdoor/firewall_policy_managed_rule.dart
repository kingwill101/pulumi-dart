// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_managed_rule_exclusion.dart';
import 'firewall_policy_managed_rule_override.dart';

class FirewallPolicyManagedRule {
  /// One or more `exclusion` blocks as defined below.
  final List<FirewallPolicyManagedRuleExclusion>? exclusions;
  /// One or more `override` blocks as defined below.
  final List<FirewallPolicyManagedRuleOverride>? overrides;
  /// The name of the managed rule to use with this resource.
  final String type;
  /// The version on the managed rule to use with this resource.
  final String version;

  /// Creates a new [FirewallPolicyManagedRule].
  /// [exclusions] One or more `exclusion` blocks as defined below.
  /// [overrides] One or more `override` blocks as defined below.
  /// [type] The name of the managed rule to use with this resource.
  /// [version] The version on the managed rule to use with this resource.
  FirewallPolicyManagedRule({
    this.exclusions,
    this.overrides,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?exclusions == null ? null : pulumi.Input.encodeList<FirewallPolicyManagedRuleExclusion, Map<String, dynamic>>(exclusions!, (value) => value.toMap()),
      'overrides': ?overrides == null ? null : pulumi.Input.encodeList<FirewallPolicyManagedRuleOverride, Map<String, dynamic>>(overrides!, (value) => value.toMap()),
      'type': type,
      'version': version,
    };
  }

  factory FirewallPolicyManagedRule.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyManagedRule(
      exclusions: map['exclusions'] == null ? null : pulumi.Input.decodeList<FirewallPolicyManagedRuleExclusion>(map['exclusions'], (value) => FirewallPolicyManagedRuleExclusion.fromMap((value as Map).cast<String, dynamic>())),
      overrides: map['overrides'] == null ? null : pulumi.Input.decodeList<FirewallPolicyManagedRuleOverride>(map['overrides'], (value) => FirewallPolicyManagedRuleOverride.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

