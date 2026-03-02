// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_firewall_policy_managed_rule_exclusion.dart';
import 'frontdoor_firewall_policy_managed_rule_override.dart';

class FrontdoorFirewallPolicyManagedRule {
  /// The action to perform for all default rule set rules when the managed rule is matched or when the anomaly score is 5 or greater depending on which version of the default rule set you are using. Possible values include `Allow`, `Log`, `Block`, or `Redirect`.
  final pulumi.Input<String> action;
  /// One or more `exclusion` blocks as defined below.
  final pulumi.Input<List<FrontdoorFirewallPolicyManagedRuleExclusion>>? exclusions;
  /// One or more `override` blocks as defined below.
  final pulumi.Input<List<FrontdoorFirewallPolicyManagedRuleOverride>>? overrides;
  /// The name of the managed rule to use with this resource. Possible values include `DefaultRuleSet`, `Microsoft_DefaultRuleSet`, `BotProtection`, or `Microsoft_BotManagerRuleSet`.
  final pulumi.Input<String> type;
  /// The version of the managed rule to use with this resource. Possible values depends on which default rule set type you are using, for the `DefaultRuleSet` type the possible values include `1.0` or `preview-0.1`. For `Microsoft_DefaultRuleSet` the possible values include `1.1`, `2.0`, or `2.1`. For `BotProtection` the value must be `preview-0.1` and for `Microsoft_BotManagerRuleSet` the possible values include `1.0` and `1.1`.
  final pulumi.Input<String> version;

  /// Creates a new [FrontdoorFirewallPolicyManagedRule].
  /// [action] The action to perform for all default rule set rules when the managed rule is matched or when the anomaly score is 5 or greater depending on which version of the default rule set you are using. Possible values include `Allow`, `Log`, `Block`, or `Redirect`.
  /// [exclusions] One or more `exclusion` blocks as defined below.
  /// [overrides] One or more `override` blocks as defined below.
  /// [type] The name of the managed rule to use with this resource. Possible values include `DefaultRuleSet`, `Microsoft_DefaultRuleSet`, `BotProtection`, or `Microsoft_BotManagerRuleSet`.
  /// [version] The version of the managed rule to use with this resource. Possible values depends on which default rule set type you are using, for the `DefaultRuleSet` type the possible values include `1.0` or `preview-0.1`. For `Microsoft_DefaultRuleSet` the possible values include `1.1`, `2.0`, or `2.1`. For `BotProtection` the value must be `preview-0.1` and for `Microsoft_BotManagerRuleSet` the possible values include `1.0` and `1.1`.
  FrontdoorFirewallPolicyManagedRule({
    required this.action,
    this.exclusions,
    this.overrides,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorFirewallPolicyManagedRuleExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<FrontdoorFirewallPolicyManagedRuleExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'overrides': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorFirewallPolicyManagedRuleOverride>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<FrontdoorFirewallPolicyManagedRuleOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'version': version,
    };
  }

  factory FrontdoorFirewallPolicyManagedRule.fromMap(Map<String, dynamic> map) {
    return FrontdoorFirewallPolicyManagedRule(
      action: (map['action'] as String).input(),
      exclusions: map['exclusions'] == null ? null : (pulumi.Input.decodeList<FrontdoorFirewallPolicyManagedRuleExclusion>(map['exclusions'], (value) => FrontdoorFirewallPolicyManagedRuleExclusion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      overrides: map['overrides'] == null ? null : (pulumi.Input.decodeList<FrontdoorFirewallPolicyManagedRuleOverride>(map['overrides'], (value) => FrontdoorFirewallPolicyManagedRuleOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

