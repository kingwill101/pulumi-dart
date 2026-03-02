// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_policy_config_response.dart';

/// Autopilot is the configuration for Autopilot settings on the cluster.
class AutopilotResponse {
  /// Enable Autopilot
  final pulumi.Input<bool> enabled;
  /// Workload policy configuration for Autopilot.
  final pulumi.Input<WorkloadPolicyConfigResponse> workloadPolicyConfig;

  /// Creates a new [AutopilotResponse].
  /// [enabled] Enable Autopilot
  /// [workloadPolicyConfig] Workload policy configuration for Autopilot.
  AutopilotResponse({
    required this.enabled,
    required this.workloadPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'workloadPolicyConfig': pulumi.Input.mapInputValue<WorkloadPolicyConfigResponse, Map<String, dynamic>>(workloadPolicyConfig, (value) => value.toMap()),
    };
  }

  factory AutopilotResponse.fromMap(Map<String, dynamic> map) {
    return AutopilotResponse(
      enabled: (map['enabled'] as bool).input(),
      workloadPolicyConfig: (WorkloadPolicyConfigResponse.fromMap((map['workloadPolicyConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

