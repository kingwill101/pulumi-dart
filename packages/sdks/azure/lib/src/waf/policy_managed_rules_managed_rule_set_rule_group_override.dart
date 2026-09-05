// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_managed_rules_managed_rule_set_rule_group_override_rule.dart';

class PolicyManagedRulesManagedRuleSetRuleGroupOverride {
  /// The name of the Rule Group. Possible values are `BadBots`, `crs20ProtocolViolations`, `crs21ProtocolAnomalies`, `crs23RequestLimits`, `crs30HttpPolicy`, `crs35BadRobots`, `crs40GenericAttacks`, `crs41SqlInjectionAttacks`, `crs41XssAttacks`, `crs42TightSecurity`, `crs45Trojans`, `crs49InboundBlocking`, `General`, `GoodBots`, `KnownBadBots`, `Known-CVEs`, `REQUEST-911-METHOD-ENFORCEMENT`, `REQUEST-913-SCANNER-DETECTION`, `REQUEST-920-PROTOCOL-ENFORCEMENT`, `REQUEST-921-PROTOCOL-ATTACK`, `REQUEST-930-APPLICATION-ATTACK-LFI`, `REQUEST-931-APPLICATION-ATTACK-RFI`, `REQUEST-932-APPLICATION-ATTACK-RCE`, `REQUEST-933-APPLICATION-ATTACK-PHP`, `REQUEST-941-APPLICATION-ATTACK-XSS`, `REQUEST-942-APPLICATION-ATTACK-SQLI`, `REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION`, `REQUEST-944-APPLICATION-ATTACK-JAVA`, `UnknownBots`, `METHOD-ENFORCEMENT`, `PROTOCOL-ENFORCEMENT`, `PROTOCOL-ATTACK`, `LFI`, `RFI`, `RCE`, `PHP`, `NODEJS`, `XSS`, `SQLI`, `FIX`, `JAVA`, `MS-ThreatIntel-WebShells`, `MS-ThreatIntel-AppSec`, `MS-ThreatIntel-SQLI`, `MS-ThreatIntel-CVEs` and `MS-ThreatIntel-XSS`.
  final pulumi.Input<String> ruleGroupName;
  /// One or more `rule` block defined below.
  final pulumi.Input<List<PolicyManagedRulesManagedRuleSetRuleGroupOverrideRule>?>? rules;

  /// Creates a new [PolicyManagedRulesManagedRuleSetRuleGroupOverride].
  /// [ruleGroupName] The name of the Rule Group. Possible values are `BadBots`, `crs20ProtocolViolations`, `crs21ProtocolAnomalies`, `crs23RequestLimits`, `crs30HttpPolicy`, `crs35BadRobots`, `crs40GenericAttacks`, `crs41SqlInjectionAttacks`, `crs41XssAttacks`, `crs42TightSecurity`, `crs45Trojans`, `crs49InboundBlocking`, `General`, `GoodBots`, `KnownBadBots`, `Known-CVEs`, `REQUEST-911-METHOD-ENFORCEMENT`, `REQUEST-913-SCANNER-DETECTION`, `REQUEST-920-PROTOCOL-ENFORCEMENT`, `REQUEST-921-PROTOCOL-ATTACK`, `REQUEST-930-APPLICATION-ATTACK-LFI`, `REQUEST-931-APPLICATION-ATTACK-RFI`, `REQUEST-932-APPLICATION-ATTACK-RCE`, `REQUEST-933-APPLICATION-ATTACK-PHP`, `REQUEST-941-APPLICATION-ATTACK-XSS`, `REQUEST-942-APPLICATION-ATTACK-SQLI`, `REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION`, `REQUEST-944-APPLICATION-ATTACK-JAVA`, `UnknownBots`, `METHOD-ENFORCEMENT`, `PROTOCOL-ENFORCEMENT`, `PROTOCOL-ATTACK`, `LFI`, `RFI`, `RCE`, `PHP`, `NODEJS`, `XSS`, `SQLI`, `FIX`, `JAVA`, `MS-ThreatIntel-WebShells`, `MS-ThreatIntel-AppSec`, `MS-ThreatIntel-SQLI`, `MS-ThreatIntel-CVEs` and `MS-ThreatIntel-XSS`.
  /// [rules] One or more `rule` block defined below.
  const PolicyManagedRulesManagedRuleSetRuleGroupOverride({
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PolicyManagedRulesManagedRuleSetRuleGroupOverrideRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PolicyManagedRulesManagedRuleSetRuleGroupOverrideRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyManagedRulesManagedRuleSetRuleGroupOverride.fromMap(Map<String, dynamic> map) {
    return PolicyManagedRulesManagedRuleSetRuleGroupOverride(
      ruleGroupName: pulumi.Input.fromValue(map['ruleGroupName'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyManagedRulesManagedRuleSetRuleGroupOverrideRule>(guardedValue, (value) => PolicyManagedRulesManagedRuleSetRuleGroupOverrideRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
