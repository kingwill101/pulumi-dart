// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_managed_rule_exclusion.dart';
import 'firewall_policy_managed_rule_override.dart';

class FirewallPolicyManagedRule {
  /// One or more `exclusion` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyManagedRuleExclusion>?>? exclusions;
  /// One or more `override` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyManagedRuleOverride>?>? overrides;
  /// The name of the managed rule to use with this resource.
  final pulumi.Input<String> type;
  /// The version on the managed rule to use with this resource.
  final pulumi.Input<String> version;

  /// Creates a new [FirewallPolicyManagedRule].
  /// [exclusions] One or more `exclusion` blocks as defined below.
  /// [overrides] One or more `override` blocks as defined below.
  /// [type] The name of the managed rule to use with this resource.
  /// [version] The version on the managed rule to use with this resource.
  const FirewallPolicyManagedRule({
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
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyManagedRuleExclusion>(guardedValue, (value) => FirewallPolicyManagedRuleExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      overrides: (() { final guardedValue = map['overrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyManagedRuleOverride>(guardedValue, (value) => FirewallPolicyManagedRuleOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
