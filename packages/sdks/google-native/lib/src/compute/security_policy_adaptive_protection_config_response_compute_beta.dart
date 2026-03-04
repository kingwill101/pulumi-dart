// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_auto_deploy_config_response_compute_beta.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_response_compute_beta.dart';

/// Configuration options for Cloud Armor Adaptive Protection (CAAP).
class SecurityPolicyAdaptiveProtectionConfigResponseComputeBeta {
  final pulumi.Input<
    SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponseComputeBeta
  >
  autoDeployConfig;

  /// If set to true, enables Cloud Armor Machine Learning.
  final pulumi.Input<
    SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeBeta
  >
  layer7DdosDefenseConfig;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigResponseComputeBeta].
  /// [autoDeployConfig] Required.
  /// [layer7DdosDefenseConfig] If set to true, enables Cloud Armor Machine Learning.
  SecurityPolicyAdaptiveProtectionConfigResponseComputeBeta({
    required this.autoDeployConfig,
    required this.layer7DdosDefenseConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeployConfig':
          pulumi.Input.mapInputValue<
            SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponseComputeBeta,
            Map<String, dynamic>
          >(autoDeployConfig, (value) => value.toMap()),
      'layer7DdosDefenseConfig':
          pulumi.Input.mapInputValue<
            SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeBeta,
            Map<String, dynamic>
          >(layer7DdosDefenseConfig, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyAdaptiveProtectionConfigResponseComputeBeta(
      autoDeployConfig: pulumi.Input.fromValue(
        SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponseComputeBeta.fromMap(
          (map['autoDeployConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      layer7DdosDefenseConfig: pulumi.Input.fromValue(
        SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeBeta.fromMap(
          (map['layer7DdosDefenseConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
