// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_rule_visibility.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config.dart';

/// Configuration options for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig {
  /// If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<bool>? enable;
  /// Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility>? ruleVisibility;
  /// Configuration options for layer7 adaptive protection for various customizable thresholds.
  final pulumi.Input<List<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig>>? thresholdConfigs;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig].
  /// [enable] If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [ruleVisibility] Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [thresholdConfigs] Configuration options for layer7 adaptive protection for various customizable thresholds.
  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig({
    this.enable,
    this.ruleVisibility,
    this.thresholdConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'ruleVisibility': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility, String>(ruleVisibility, (value) => value.value),
      'thresholdConfigs': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig>, List<Map<String, dynamic>>>(thresholdConfigs, (value) => pulumi.Input.encodeList<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig(
      enable: map['enable'] == null ? null : (map['enable'] as bool).input(),
      ruleVisibility: map['ruleVisibility'] == null ? null : (SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibility.fromValue(map['ruleVisibility'] as String)).input(),
      thresholdConfigs: map['thresholdConfigs'] == null ? null : (pulumi.Input.decodeList<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig>(map['thresholdConfigs'], (value) => SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

