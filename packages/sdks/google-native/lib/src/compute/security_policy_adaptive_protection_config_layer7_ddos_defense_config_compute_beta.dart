// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_rule_visibility_compute_beta.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config_compute_beta.dart';

/// Configuration options for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta {
  /// If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<bool>? enable;
  /// Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeBeta>? ruleVisibility;
  /// Configuration options for layer7 adaptive protection for various customizable thresholds.
  final pulumi.Input<List<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta>>? thresholdConfigs;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta].
  /// [enable] If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [ruleVisibility] Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [thresholdConfigs] Configuration options for layer7 adaptive protection for various customizable thresholds.
  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta({
    this.enable,
    this.ruleVisibility,
    this.thresholdConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'ruleVisibility': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeBeta, String>(ruleVisibility, (value) => value.value),
      'thresholdConfigs': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta>, List<Map<String, dynamic>>>(thresholdConfigs, (value) => pulumi.Input.encodeList<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta(
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      ruleVisibility: map['ruleVisibility'] == null ? null : (SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigRuleVisibilityComputeBeta.fromValue(map['ruleVisibility']! as String)).input(),
      thresholdConfigs: map['thresholdConfigs'] == null ? null : (pulumi.Input.decodeList<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta>(map['thresholdConfigs']!, (value) => SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

