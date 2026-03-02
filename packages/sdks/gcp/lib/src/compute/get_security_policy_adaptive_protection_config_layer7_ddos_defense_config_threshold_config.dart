// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config_traffic_granularity_config.dart';

class GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig {
  final pulumi.Input<double> autoDeployConfidenceThreshold;
  final pulumi.Input<int> autoDeployExpirationSec;
  final pulumi.Input<double> autoDeployImpactedBaselineThreshold;
  final pulumi.Input<double> autoDeployLoadThreshold;
  final pulumi.Input<double> detectionAbsoluteQps;
  final pulumi.Input<double> detectionLoadThreshold;
  final pulumi.Input<double> detectionRelativeToBaselineQps;
  /// The name of the security policy. Provide either this or a `self_link`.
  final pulumi.Input<String> name;
  final pulumi.Input<List<GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig>> trafficGranularityConfigs;

  /// Creates a new [GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig].
  /// [autoDeployConfidenceThreshold] Required.
  /// [autoDeployExpirationSec] Required.
  /// [autoDeployImpactedBaselineThreshold] Required.
  /// [autoDeployLoadThreshold] Required.
  /// [detectionAbsoluteQps] Required.
  /// [detectionLoadThreshold] Required.
  /// [detectionRelativeToBaselineQps] Required.
  /// [name] The name of the security policy. Provide either this or a `self_link`.
  /// [trafficGranularityConfigs] Required.
  GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig({
    required this.autoDeployConfidenceThreshold,
    required this.autoDeployExpirationSec,
    required this.autoDeployImpactedBaselineThreshold,
    required this.autoDeployLoadThreshold,
    required this.detectionAbsoluteQps,
    required this.detectionLoadThreshold,
    required this.detectionRelativeToBaselineQps,
    required this.name,
    required this.trafficGranularityConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeployConfidenceThreshold': autoDeployConfidenceThreshold,
      'autoDeployExpirationSec': autoDeployExpirationSec,
      'autoDeployImpactedBaselineThreshold': autoDeployImpactedBaselineThreshold,
      'autoDeployLoadThreshold': autoDeployLoadThreshold,
      'detectionAbsoluteQps': detectionAbsoluteQps,
      'detectionLoadThreshold': detectionLoadThreshold,
      'detectionRelativeToBaselineQps': detectionRelativeToBaselineQps,
      'name': name,
      'trafficGranularityConfigs': pulumi.Input.mapInputValue<List<GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig>, List<Map<String, dynamic>>>(trafficGranularityConfigs, (value) => pulumi.Input.encodeList<GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig(
      autoDeployConfidenceThreshold: (map['autoDeployConfidenceThreshold'] as double).input(),
      autoDeployExpirationSec: (map['autoDeployExpirationSec'] as int).input(),
      autoDeployImpactedBaselineThreshold: (map['autoDeployImpactedBaselineThreshold'] as double).input(),
      autoDeployLoadThreshold: (map['autoDeployLoadThreshold'] as double).input(),
      detectionAbsoluteQps: (map['detectionAbsoluteQps'] as double).input(),
      detectionLoadThreshold: (map['detectionLoadThreshold'] as double).input(),
      detectionRelativeToBaselineQps: (map['detectionRelativeToBaselineQps'] as double).input(),
      name: (map['name'] as String).input(),
      trafficGranularityConfigs: (pulumi.Input.decodeList<GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig>(map['trafficGranularityConfigs'], (value) => GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

