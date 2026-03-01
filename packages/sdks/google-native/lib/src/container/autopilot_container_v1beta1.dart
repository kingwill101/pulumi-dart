// ignore_for_file: unused_element, unnecessary_cast

import 'workload_policy_config_container_v1beta1.dart';

/// Autopilot is the configuration for Autopilot settings on the cluster.
class AutopilotContainerV1beta1 {
  /// ConversionStatus shows conversion status.
  final Map<String, dynamic>? conversionStatus;
  /// Enable Autopilot
  final bool? enabled;
  /// Workload policy configuration for Autopilot.
  final WorkloadPolicyConfigContainerV1beta1? workloadPolicyConfig;

  /// Creates a new [AutopilotContainerV1beta1].
  /// [conversionStatus] ConversionStatus shows conversion status.
  /// [enabled] Enable Autopilot
  /// [workloadPolicyConfig] Workload policy configuration for Autopilot.
  AutopilotContainerV1beta1({
    this.conversionStatus,
    this.enabled,
    this.workloadPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversionStatus': ?conversionStatus,
      'enabled': ?enabled,
      'workloadPolicyConfig': ?workloadPolicyConfig == null ? null : workloadPolicyConfig!.toMap(),
    };
  }

  factory AutopilotContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AutopilotContainerV1beta1(
      conversionStatus: map['conversionStatus'] == null ? null : (map['conversionStatus'] as Map).cast<String, dynamic>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      workloadPolicyConfig: map['workloadPolicyConfig'] == null ? null : WorkloadPolicyConfigContainerV1beta1.fromMap((map['workloadPolicyConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

