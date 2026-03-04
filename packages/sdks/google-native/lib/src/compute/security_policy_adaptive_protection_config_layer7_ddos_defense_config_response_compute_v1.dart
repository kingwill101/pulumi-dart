// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config_response_compute_v1.dart';

/// Configuration options for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeV1 {
  /// If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<bool> enable;

  /// Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<String> ruleVisibility;

  /// Configuration options for layer7 adaptive protection for various customizable thresholds.
  final pulumi.Input<
    List<
      SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeV1
    >
  >
  thresholdConfigs;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeV1].
  /// [enable] If set to true, enables CAAP for L7 DDoS detection. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [ruleVisibility] Rule visibility can be one of the following: STANDARD - opaque rules. (default) PREMIUM - transparent rules. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [thresholdConfigs] Configuration options for layer7 adaptive protection for various customizable thresholds.
  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeV1({
    required this.enable,
    required this.ruleVisibility,
    required this.thresholdConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
      'ruleVisibility': ruleVisibility,
      'thresholdConfigs':
          pulumi.Input.mapInputValue<
            List<
              SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeV1
            >,
            List<Map<String, dynamic>>
          >(
            thresholdConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeV1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigResponseComputeV1(
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      ruleVisibility: pulumi.Input.fromValue(map['ruleVisibility'] as String),
      thresholdConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeV1
        >(
          map['thresholdConfigs']!,
          (value) =>
              SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeV1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
