// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_auto_deploy_config_response.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_response.dart';

/// Configuration options for Cloud Armor Adaptive Protection (CAAP).
class SecurityPolicyAdaptiveProtectionConfigResponse {
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse> autoDeployConfig;
  /// If set to true, enables Cloud Armor Machine Learning.
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse> layer7DdosDefenseConfig;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigResponse].
  /// [autoDeployConfig] Required.
  /// [layer7DdosDefenseConfig] If set to true, enables Cloud Armor Machine Learning.
  SecurityPolicyAdaptiveProtectionConfigResponse({
    required this.autoDeployConfig,
    required this.layer7DdosDefenseConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeployConfig': pulumi.Input.mapInputValue<SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse, Map<String, dynamic>>(autoDeployConfig, (value) => value.toMap()),
      'layer7DdosDefenseConfig': pulumi.Input.mapInputValue<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse, Map<String, dynamic>>(layer7DdosDefenseConfig, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigResponse(
      autoDeployConfig: (SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse.fromMap((map['autoDeployConfig'] as Map).cast<String, dynamic>())).input(),
      layer7DdosDefenseConfig: (SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponse.fromMap((map['layer7DdosDefenseConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

