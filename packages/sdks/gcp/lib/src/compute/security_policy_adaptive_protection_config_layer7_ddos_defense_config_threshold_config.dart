// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config_traffic_granularity_config.dart';

class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig {
  /// Confidence threshold above which Adaptive Protection's auto-deploy takes actions.
  final pulumi.Input<double>? autoDeployConfidenceThreshold;
  /// Duration over which Adaptive Protection's auto-deployed actions last.
  final pulumi.Input<int>? autoDeployExpirationSec;
  /// Impacted baseline threshold below which Adaptive Protection's auto-deploy takes actions.
  final pulumi.Input<double>? autoDeployImpactedBaselineThreshold;
  /// Load threshold above which Adaptive Protection automatically deploy threshold based on the backend load threshold and detect a new rule during an alerted attack.
  final pulumi.Input<double>? autoDeployLoadThreshold;
  /// Detection threshold based on absolute QPS.
  final pulumi.Input<double>? detectionAbsoluteQps;
  /// Detection threshold based on the backend service's load.
  final pulumi.Input<double>? detectionLoadThreshold;
  /// Detection threshold based on QPS relative to the average of baseline traffic.
  final pulumi.Input<double>? detectionRelativeToBaselineQps;
  /// The name of config. The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the security policy.
  final pulumi.Input<String> name;
  /// Configuration options for enabling Adaptive Protection to work on the specified service granularity. Structure is documented below.
  final pulumi.Input<List<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig>>? trafficGranularityConfigs;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig].
  /// [autoDeployConfidenceThreshold] Confidence threshold above which Adaptive Protection's auto-deploy takes actions.
  /// [autoDeployExpirationSec] Duration over which Adaptive Protection's auto-deployed actions last.
  /// [autoDeployImpactedBaselineThreshold] Impacted baseline threshold below which Adaptive Protection's auto-deploy takes actions.
  /// [autoDeployLoadThreshold] Load threshold above which Adaptive Protection automatically deploy threshold based on the backend load threshold and detect a new rule during an alerted attack.
  /// [detectionAbsoluteQps] Detection threshold based on absolute QPS.
  /// [detectionLoadThreshold] Detection threshold based on the backend service's load.
  /// [detectionRelativeToBaselineQps] Detection threshold based on QPS relative to the average of baseline traffic.
  /// [name] The name of config. The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the security policy.
  /// [trafficGranularityConfigs] Configuration options for enabling Adaptive Protection to work on the specified service granularity. Structure is documented below.
  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig({
    this.autoDeployConfidenceThreshold,
    this.autoDeployExpirationSec,
    this.autoDeployImpactedBaselineThreshold,
    this.autoDeployLoadThreshold,
    this.detectionAbsoluteQps,
    this.detectionLoadThreshold,
    this.detectionRelativeToBaselineQps,
    required this.name,
    this.trafficGranularityConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeployConfidenceThreshold': ?autoDeployConfidenceThreshold,
      'autoDeployExpirationSec': ?autoDeployExpirationSec,
      'autoDeployImpactedBaselineThreshold': ?autoDeployImpactedBaselineThreshold,
      'autoDeployLoadThreshold': ?autoDeployLoadThreshold,
      'detectionAbsoluteQps': ?detectionAbsoluteQps,
      'detectionLoadThreshold': ?detectionLoadThreshold,
      'detectionRelativeToBaselineQps': ?detectionRelativeToBaselineQps,
      'name': name,
      'trafficGranularityConfigs': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig>, List<Map<String, dynamic>>>(trafficGranularityConfigs, (value) => pulumi.Input.encodeList<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig(
      autoDeployConfidenceThreshold: (() { final guardedValue = map['autoDeployConfidenceThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      autoDeployExpirationSec: (() { final guardedValue = map['autoDeployExpirationSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoDeployImpactedBaselineThreshold: (() { final guardedValue = map['autoDeployImpactedBaselineThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      autoDeployLoadThreshold: (() { final guardedValue = map['autoDeployLoadThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      detectionAbsoluteQps: (() { final guardedValue = map['detectionAbsoluteQps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      detectionLoadThreshold: (() { final guardedValue = map['detectionLoadThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      detectionRelativeToBaselineQps: (() { final guardedValue = map['detectionRelativeToBaselineQps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      trafficGranularityConfigs: (() { final guardedValue = map['trafficGranularityConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig>(guardedValue, (value) => SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

