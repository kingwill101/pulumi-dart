// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_policy_config_container_v1beta1.dart';

/// Autopilot is the configuration for Autopilot settings on the cluster.
class AutopilotContainerV1beta1 {
  /// ConversionStatus shows conversion status.
  final pulumi.Input<Map<String, dynamic>>? conversionStatus;

  /// Enable Autopilot
  final pulumi.Input<bool>? enabled;

  /// Workload policy configuration for Autopilot.
  final pulumi.Input<WorkloadPolicyConfigContainerV1beta1>?
  workloadPolicyConfig;

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
      'workloadPolicyConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WorkloadPolicyConfigContainerV1beta1,
            Map<String, dynamic>
          >(workloadPolicyConfig, (value) => value.toMap()),
    };
  }

  factory AutopilotContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AutopilotContainerV1beta1(
      conversionStatus: (() {
        final guardedValue = map['conversionStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      workloadPolicyConfig: (() {
        final guardedValue = map['workloadPolicyConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkloadPolicyConfigContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
