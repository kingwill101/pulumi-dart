// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_managed_rule_exclusion.dart';
import 'firewall_policy_managed_rule_override.dart';

class FirewallPolicyManagedRule {
  /// One or more `exclusion` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyManagedRuleExclusion>>? exclusions;
  /// One or more `override` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyManagedRuleOverride>>? overrides;
  /// The name of the managed rule to use with this resource.
  final pulumi.Input<String> type;
  /// The version on the managed rule to use with this resource.
  final pulumi.Input<String> version;

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
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyManagedRuleExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<FirewallPolicyManagedRuleExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'overrides': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyManagedRuleOverride>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<FirewallPolicyManagedRuleOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'version': version,
    };
  }

  factory FirewallPolicyManagedRule.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyManagedRule(
      exclusions: map['exclusions'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyManagedRuleExclusion>(map['exclusions'], (value) => FirewallPolicyManagedRuleExclusion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      overrides: map['overrides'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyManagedRuleOverride>(map['overrides'], (value) => FirewallPolicyManagedRuleOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

