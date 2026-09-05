// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayWafConfigurationDisabledRuleGroup {
  /// The rule group where specific rules should be disabled. Possible values are `BadBots`, `crs20ProtocolViolations`, `crs21ProtocolAnomalies`, `crs23RequestLimits`, `crs30HttpPolicy`, `crs35BadRobots`, `crs40GenericAttacks`, `crs41SqlInjectionAttacks`, `crs41XssAttacks`, `crs42TightSecurity`, `crs45Trojans`, `crs49InboundBlocking`, `General`, `GoodBots`, `KnownBadBots`, `Known-CVEs`, `REQUEST-911-METHOD-ENFORCEMENT`, `REQUEST-913-SCANNER-DETECTION`, `REQUEST-920-PROTOCOL-ENFORCEMENT`, `REQUEST-921-PROTOCOL-ATTACK`, `REQUEST-930-APPLICATION-ATTACK-LFI`, `REQUEST-931-APPLICATION-ATTACK-RFI`, `REQUEST-932-APPLICATION-ATTACK-RCE`, `REQUEST-933-APPLICATION-ATTACK-PHP`, `REQUEST-941-APPLICATION-ATTACK-XSS`, `REQUEST-942-APPLICATION-ATTACK-SQLI`, `REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION`, `REQUEST-944-APPLICATION-ATTACK-JAVA`, `UnknownBots`, `METHOD-ENFORCEMENT`, `PROTOCOL-ENFORCEMENT`, `PROTOCOL-ATTACK`, `LFI`, `RFI`, `RCE`, `PHP`, `NODEJS`, `XSS`, `SQLI`, `FIX`, `JAVA`, `MS-ThreatIntel-WebShells`, `MS-ThreatIntel-AppSec`, `MS-ThreatIntel-SQLI`, `MS-ThreatIntel-CVEs` and `MS-ThreatIntel-XSS`.
  final pulumi.Input<String> ruleGroupName;
  /// A list of rules which should be disabled in that group. Disables all rules in the specified group if `rules` is not specified.
  final pulumi.Input<List<int>?>? rules;

  /// Creates a new [ApplicationGatewayWafConfigurationDisabledRuleGroup].
  /// [ruleGroupName] The rule group where specific rules should be disabled. Possible values are `BadBots`, `crs20ProtocolViolations`, `crs21ProtocolAnomalies`, `crs23RequestLimits`, `crs30HttpPolicy`, `crs35BadRobots`, `crs40GenericAttacks`, `crs41SqlInjectionAttacks`, `crs41XssAttacks`, `crs42TightSecurity`, `crs45Trojans`, `crs49InboundBlocking`, `General`, `GoodBots`, `KnownBadBots`, `Known-CVEs`, `REQUEST-911-METHOD-ENFORCEMENT`, `REQUEST-913-SCANNER-DETECTION`, `REQUEST-920-PROTOCOL-ENFORCEMENT`, `REQUEST-921-PROTOCOL-ATTACK`, `REQUEST-930-APPLICATION-ATTACK-LFI`, `REQUEST-931-APPLICATION-ATTACK-RFI`, `REQUEST-932-APPLICATION-ATTACK-RCE`, `REQUEST-933-APPLICATION-ATTACK-PHP`, `REQUEST-941-APPLICATION-ATTACK-XSS`, `REQUEST-942-APPLICATION-ATTACK-SQLI`, `REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION`, `REQUEST-944-APPLICATION-ATTACK-JAVA`, `UnknownBots`, `METHOD-ENFORCEMENT`, `PROTOCOL-ENFORCEMENT`, `PROTOCOL-ATTACK`, `LFI`, `RFI`, `RCE`, `PHP`, `NODEJS`, `XSS`, `SQLI`, `FIX`, `JAVA`, `MS-ThreatIntel-WebShells`, `MS-ThreatIntel-AppSec`, `MS-ThreatIntel-SQLI`, `MS-ThreatIntel-CVEs` and `MS-ThreatIntel-XSS`.
  /// [rules] A list of rules which should be disabled in that group. Disables all rules in the specified group if `rules` is not specified.
  const ApplicationGatewayWafConfigurationDisabledRuleGroup({
    required this.ruleGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleGroupName': ruleGroupName,
      'rules': ?rules,
    };
  }

  factory ApplicationGatewayWafConfigurationDisabledRuleGroup.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayWafConfigurationDisabledRuleGroup(
      ruleGroupName: pulumi.Input.fromValue(map['ruleGroupName'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}
