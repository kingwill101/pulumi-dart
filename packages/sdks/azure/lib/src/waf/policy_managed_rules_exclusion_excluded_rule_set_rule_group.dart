// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyManagedRulesExclusionExcludedRuleSetRuleGroup {
  /// One or more Rule IDs for exclusion.
  final pulumi.Input<List<String>?>? excludedRules;
  /// The name of rule group for exclusion. Possible values are `BadBots`, `crs20ProtocolViolations`, `crs21ProtocolAnomalies`, `crs23RequestLimits`, `crs30HttpPolicy`, `crs35BadRobots`, `crs40GenericAttacks`, `crs41SqlInjectionAttacks`, `crs41XssAttacks`, `crs42TightSecurity`, `crs45Trojans`, `crs49InboundBlocking`, `General`, `GoodBots`, `KnownBadBots`, `Known-CVEs`, `REQUEST-911-METHOD-ENFORCEMENT`, `REQUEST-913-SCANNER-DETECTION`, `REQUEST-920-PROTOCOL-ENFORCEMENT`, `REQUEST-921-PROTOCOL-ATTACK`, `REQUEST-930-APPLICATION-ATTACK-LFI`, `REQUEST-931-APPLICATION-ATTACK-RFI`, `REQUEST-932-APPLICATION-ATTACK-RCE`, `REQUEST-933-APPLICATION-ATTACK-PHP`, `REQUEST-941-APPLICATION-ATTACK-XSS`, `REQUEST-942-APPLICATION-ATTACK-SQLI`, `REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION`, `REQUEST-944-APPLICATION-ATTACK-JAVA`, `UnknownBots`, `METHOD-ENFORCEMENT`, `PROTOCOL-ENFORCEMENT`, `PROTOCOL-ATTACK`, `LFI`, `RFI`, `RCE`, `PHP`, `NODEJS`, `XSS`, `SQLI`, `FIX`, `JAVA`, `MS-ThreatIntel-WebShells`, `MS-ThreatIntel-AppSec`, `MS-ThreatIntel-SQLI`, `MS-ThreatIntel-CVEs` and `MS-ThreatIntel-XSS`.
  final pulumi.Input<String> ruleGroupName;

  /// Creates a new [PolicyManagedRulesExclusionExcludedRuleSetRuleGroup].
  /// [excludedRules] One or more Rule IDs for exclusion.
  /// [ruleGroupName] The name of rule group for exclusion. Possible values are `BadBots`, `crs20ProtocolViolations`, `crs21ProtocolAnomalies`, `crs23RequestLimits`, `crs30HttpPolicy`, `crs35BadRobots`, `crs40GenericAttacks`, `crs41SqlInjectionAttacks`, `crs41XssAttacks`, `crs42TightSecurity`, `crs45Trojans`, `crs49InboundBlocking`, `General`, `GoodBots`, `KnownBadBots`, `Known-CVEs`, `REQUEST-911-METHOD-ENFORCEMENT`, `REQUEST-913-SCANNER-DETECTION`, `REQUEST-920-PROTOCOL-ENFORCEMENT`, `REQUEST-921-PROTOCOL-ATTACK`, `REQUEST-930-APPLICATION-ATTACK-LFI`, `REQUEST-931-APPLICATION-ATTACK-RFI`, `REQUEST-932-APPLICATION-ATTACK-RCE`, `REQUEST-933-APPLICATION-ATTACK-PHP`, `REQUEST-941-APPLICATION-ATTACK-XSS`, `REQUEST-942-APPLICATION-ATTACK-SQLI`, `REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION`, `REQUEST-944-APPLICATION-ATTACK-JAVA`, `UnknownBots`, `METHOD-ENFORCEMENT`, `PROTOCOL-ENFORCEMENT`, `PROTOCOL-ATTACK`, `LFI`, `RFI`, `RCE`, `PHP`, `NODEJS`, `XSS`, `SQLI`, `FIX`, `JAVA`, `MS-ThreatIntel-WebShells`, `MS-ThreatIntel-AppSec`, `MS-ThreatIntel-SQLI`, `MS-ThreatIntel-CVEs` and `MS-ThreatIntel-XSS`.
  const PolicyManagedRulesExclusionExcludedRuleSetRuleGroup({
    this.excludedRules,
    required this.ruleGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedRules': ?excludedRules,
      'ruleGroupName': ruleGroupName,
    };
  }

  factory PolicyManagedRulesExclusionExcludedRuleSetRuleGroup.fromMap(Map<String, dynamic> map) {
    return PolicyManagedRulesExclusionExcludedRuleSetRuleGroup(
      excludedRules: (() { final guardedValue = map['excludedRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ruleGroupName: pulumi.Input.fromValue(map['ruleGroupName'] as String),
    );
  }
}
