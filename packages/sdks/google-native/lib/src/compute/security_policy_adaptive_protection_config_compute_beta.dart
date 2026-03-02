// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_auto_deploy_config_compute_beta.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_compute_beta.dart';

/// Configuration options for Cloud Armor Adaptive Protection (CAAP).
class SecurityPolicyAdaptiveProtectionConfigComputeBeta {
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigComputeBeta>? autoDeployConfig;
  /// If set to true, enables Cloud Armor Machine Learning.
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta>? layer7DdosDefenseConfig;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigComputeBeta].
  /// [autoDeployConfig] Optional.
  /// [layer7DdosDefenseConfig] If set to true, enables Cloud Armor Machine Learning.
  SecurityPolicyAdaptiveProtectionConfigComputeBeta({
    this.autoDeployConfig,
    this.layer7DdosDefenseConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeployConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigComputeBeta, Map<String, dynamic>>(autoDeployConfig, (value) => value.toMap()),
      'layer7DdosDefenseConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta, Map<String, dynamic>>(layer7DdosDefenseConfig, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigComputeBeta(
      autoDeployConfig: map['autoDeployConfig'] == null ? null : (SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigComputeBeta.fromMap((map['autoDeployConfig'] as Map).cast<String, dynamic>())).input(),
      layer7DdosDefenseConfig: map['layer7DdosDefenseConfig'] == null ? null : (SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigComputeBeta.fromMap((map['layer7DdosDefenseConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

