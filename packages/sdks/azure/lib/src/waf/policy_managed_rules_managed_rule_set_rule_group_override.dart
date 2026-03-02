// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_managed_rules_managed_rule_set_rule_group_override_rule.dart';

class PolicyManagedRulesManagedRuleSetRuleGroupOverride {
  /// The name of the Rule Group. Possible values are `BadBots`, `crs_20_protocol_violations`, `crs_21_protocol_anomalies`, `crs_23_request_limits`, `crs_30_http_policy`, `crs_35_bad_robots`, `crs_40_generic_attacks`, `crs_41_sql_injection_attacks`, `crs_41_xss_attacks`, `crs_42_tight_security`, `crs_45_trojans`, `crs_49_inbound_blocking`, `General`, `GoodBots`, `KnownBadBots`, `Known-CVEs`, `REQUEST-911-METHOD-ENFORCEMENT`, `REQUEST-913-SCANNER-DETECTION`, `REQUEST-920-PROTOCOL-ENFORCEMENT`, `REQUEST-921-PROTOCOL-ATTACK`, `REQUEST-930-APPLICATION-ATTACK-LFI`, `REQUEST-931-APPLICATION-ATTACK-RFI`, `REQUEST-932-APPLICATION-ATTACK-RCE`, `REQUEST-933-APPLICATION-ATTACK-PHP`, `REQUEST-941-APPLICATION-ATTACK-XSS`, `REQUEST-942-APPLICATION-ATTACK-SQLI`, `REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION`, `REQUEST-944-APPLICATION-ATTACK-JAVA`, `UnknownBots`, `METHOD-ENFORCEMENT`, `PROTOCOL-ENFORCEMENT`, `PROTOCOL-ATTACK`, `LFI`, `RFI`, `RCE`, `PHP`, `NODEJS`, `XSS`, `SQLI`, `FIX`, `JAVA`, `MS-ThreatIntel-WebShells`, `MS-ThreatIntel-AppSec`, `MS-ThreatIntel-SQLI`, `MS-ThreatIntel-CVEs` and `MS-ThreatIntel-XSS`.
  final pulumi.Input<String> ruleGroupName;
  /// One or more `rule` block defined below.
  final pulumi.Input<List<PolicyManagedRulesManagedRuleSetRuleGroupOverrideRule>>? rules;

  /// Creates a new [PolicyManagedRulesManagedRuleSetRuleGroupOverride].
  /// [ruleGroupName] The name of the Rule Group. Possible values are `BadBots`, `crs_20_protocol_violations`, `crs_21_protocol_anomalies`, `crs_23_request_limits`, `crs_30_http_policy`, `crs_35_bad_robots`, `crs_40_generic_attacks`, `crs_41_sql_injection_attacks`, `crs_41_xss_attacks`, `crs_42_tight_security`, `crs_45_trojans`, `crs_49_inbound_blocking`, `General`, `GoodBots`, `KnownBadBots`, `Known-CVEs`, `REQUEST-911-METHOD-ENFORCEMENT`, `REQUEST-913-SCANNER-DETECTION`, `REQUEST-920-PROTOCOL-ENFORCEMENT`, `REQUEST-921-PROTOCOL-ATTACK`, `REQUEST-930-APPLICATION-ATTACK-LFI`, `REQUEST-931-APPLICATION-ATTACK-RFI`, `REQUEST-932-APPLICATION-ATTACK-RCE`, `REQUEST-933-APPLICATION-ATTACK-PHP`, `REQUEST-941-APPLICATION-ATTACK-XSS`, `REQUEST-942-APPLICATION-ATTACK-SQLI`, `REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION`, `REQUEST-944-APPLICATION-ATTACK-JAVA`, `UnknownBots`, `METHOD-ENFORCEMENT`, `PROTOCOL-ENFORCEMENT`, `PROTOCOL-ATTACK`, `LFI`, `RFI`, `RCE`, `PHP`, `NODEJS`, `XSS`, `SQLI`, `FIX`, `JAVA`, `MS-ThreatIntel-WebShells`, `MS-ThreatIntel-AppSec`, `MS-ThreatIntel-SQLI`, `MS-ThreatIntel-CVEs` and `MS-ThreatIntel-XSS`.
  /// [rules] One or more `rule` block defined below.
  PolicyManagedRulesManagedRuleSetRuleGroupOverride({
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
      ruleGroupName: (map['ruleGroupName'] as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<PolicyManagedRulesManagedRuleSetRuleGroupOverrideRule>(map['rules']!, (value) => PolicyManagedRulesManagedRuleSetRuleGroupOverrideRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

