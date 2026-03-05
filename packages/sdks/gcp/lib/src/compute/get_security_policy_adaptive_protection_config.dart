// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_adaptive_protection_config_auto_deploy_config.dart';
import 'get_security_policy_adaptive_protection_config_layer7_ddos_defense_config.dart';

class GetSecurityPolicyAdaptiveProtectionConfig {
  /// Auto Deploy Config of this security policy
  final pulumi.Input<List<GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig>> autoDeployConfigs;
  /// Layer 7 DDoS Defense Config of this security policy
  final pulumi.Input<List<GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig>> layer7DdosDefenseConfigs;

  /// Creates a new [GetSecurityPolicyAdaptiveProtectionConfig].
  /// [autoDeployConfigs] Auto Deploy Config of this security policy
  /// [layer7DdosDefenseConfigs] Layer 7 DDoS Defense Config of this security policy
  GetSecurityPolicyAdaptiveProtectionConfig({
    required this.autoDeployConfigs,
    required this.layer7DdosDefenseConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeployConfigs': pulumi.Input.mapInputValue<List<GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig>, List<Map<String, dynamic>>>(autoDeployConfigs, (value) => pulumi.Input.encodeList<GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'layer7DdosDefenseConfigs': pulumi.Input.mapInputValue<List<GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig>, List<Map<String, dynamic>>>(layer7DdosDefenseConfigs, (value) => pulumi.Input.encodeList<GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSecurityPolicyAdaptiveProtectionConfig.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyAdaptiveProtectionConfig(
      autoDeployConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig>(map['autoDeployConfigs']!, (value) => GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig.fromMap((value as Map).cast<String, dynamic>()))),
      layer7DdosDefenseConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig>(map['layer7DdosDefenseConfigs']!, (value) => GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

