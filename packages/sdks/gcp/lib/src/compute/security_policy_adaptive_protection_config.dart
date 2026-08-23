// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_auto_deploy_config.dart';
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config.dart';

class SecurityPolicyAdaptiveProtectionConfig {
  /// ) Configuration for [Automatically deploy Adaptive Protection suggested rules](https://cloud.google.com/armor/docs/adaptive-protection-auto-deploy?hl=en). Structure is documented below.
  ///
  /// &lt;a name="nestedLayer7DdosDefenseConfig"&gt;&lt;/a&gt;The `layer7DdosDefenseConfig` block supports:
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig>? autoDeployConfig;
  /// Configuration for [Google Cloud Armor Adaptive Protection Layer 7 DDoS Defense](https://cloud.google.com/armor/docs/adaptive-protection-overview?hl=en). Structure is documented below.
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig>? layer7DdosDefenseConfig;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfig].
  /// [autoDeployConfig] ) Configuration for [Automatically deploy Adaptive Protection suggested rules](https://cloud.google.com/armor/docs/adaptive-protection-auto-deploy?hl=en). Structure is documented below.
  /// [layer7DdosDefenseConfig] Configuration for [Google Cloud Armor Adaptive Protection Layer 7 DDoS Defense](https://cloud.google.com/armor/docs/adaptive-protection-overview?hl=en). Structure is documented below.
  const SecurityPolicyAdaptiveProtectionConfig({
    this.autoDeployConfig,
    this.layer7DdosDefenseConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeployConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig, Map<String, dynamic>>(autoDeployConfig, (value) => value.toMap()),
      'layer7DdosDefenseConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig, Map<String, dynamic>>(layer7DdosDefenseConfig, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfig(
      autoDeployConfig: (() { final guardedValue = map['autoDeployConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      layer7DdosDefenseConfig: (() { final guardedValue = map['layer7DdosDefenseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
