// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_policy_config.dart';

/// Autopilot is the configuration for Autopilot settings on the cluster.
class Autopilot {
  /// Enable Autopilot
  final pulumi.Input<bool>? enabled;
  /// Workload policy configuration for Autopilot.
  final pulumi.Input<WorkloadPolicyConfig>? workloadPolicyConfig;

  /// Creates a new [Autopilot].
  /// [enabled] Enable Autopilot
  /// [workloadPolicyConfig] Workload policy configuration for Autopilot.
  const Autopilot({
    this.enabled,
    this.workloadPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'workloadPolicyConfig': ?pulumi.Input.mapOptionalInputValue<WorkloadPolicyConfig, Map<String, dynamic>>(workloadPolicyConfig, (value) => value.toMap()),
    };
  }

  factory Autopilot.fromMap(Map<String, dynamic> map) {
    return Autopilot(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workloadPolicyConfig: (() { final guardedValue = map['workloadPolicyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

