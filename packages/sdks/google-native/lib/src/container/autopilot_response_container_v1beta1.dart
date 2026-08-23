// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autopilot_conversion_status_response.dart';
import 'workload_policy_config_response_container_v1beta1.dart';

/// Autopilot is the configuration for Autopilot settings on the cluster.
class AutopilotResponseContainerV1beta1 {
  /// ConversionStatus shows conversion status.
  final pulumi.Input<AutopilotConversionStatusResponse> conversionStatus;
  /// Enable Autopilot
  final pulumi.Input<bool> enabled;
  /// Workload policy configuration for Autopilot.
  final pulumi.Input<WorkloadPolicyConfigResponseContainerV1beta1> workloadPolicyConfig;

  /// Creates a new [AutopilotResponseContainerV1beta1].
  /// [conversionStatus] ConversionStatus shows conversion status.
  /// [enabled] Enable Autopilot
  /// [workloadPolicyConfig] Workload policy configuration for Autopilot.
  const AutopilotResponseContainerV1beta1({
    required this.conversionStatus,
    required this.enabled,
    required this.workloadPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversionStatus': pulumi.Input.mapInputValue<AutopilotConversionStatusResponse, Map<String, dynamic>>(conversionStatus, (value) => value.toMap()),
      'enabled': enabled,
      'workloadPolicyConfig': pulumi.Input.mapInputValue<WorkloadPolicyConfigResponseContainerV1beta1, Map<String, dynamic>>(workloadPolicyConfig, (value) => value.toMap()),
    };
  }

  factory AutopilotResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AutopilotResponseContainerV1beta1(
      conversionStatus: pulumi.Input.fromValue(AutopilotConversionStatusResponse.fromMap((map['conversionStatus']! as Map).cast<String, dynamic>())),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      workloadPolicyConfig: pulumi.Input.fromValue(WorkloadPolicyConfigResponseContainerV1beta1.fromMap((map['workloadPolicyConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
