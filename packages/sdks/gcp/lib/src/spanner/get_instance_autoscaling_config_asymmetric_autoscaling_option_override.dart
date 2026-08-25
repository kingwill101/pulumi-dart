// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_autoscaling_config_asymmetric_autoscaling_option_override_autoscaling_limit.dart';

class GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride {
  /// A nested object resource.
  final pulumi.Input<List<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit>> autoscalingLimits;
  /// The target high priority cpu utilization percentage that the autoscaler
  /// should be trying to achieve for this replica.
  /// This number is on a scale from 0 (no utilization) to 100 (full utilization).
  final pulumi.Input<int> autoscalingTargetHighPriorityCpuUtilizationPercent;
  /// The target total cpu utilization percentage that the autoscaler
  /// should be trying to achieve for this replica.
  /// This number is on a scale from 0 (no utilization) to 100 (full utilization).
  final pulumi.Input<int> autoscalingTargetTotalCpuUtilizationPercent;
  /// If true, disables high priority CPU autoscaling for this replica and ignores
  /// highPriorityCpuUtilizationPercent in the top-level autoscaling configuration.
  final pulumi.Input<bool> disableHighPriorityCpuAutoscaling;
  /// If true, disables total CPU autoscaling for this replica and ignores
  /// totalCpuUtilizationPercent in the top-level autoscaling configuration.
  final pulumi.Input<bool> disableTotalCpuAutoscaling;

  /// Creates a new [GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride].
  /// [autoscalingLimits] A nested object resource.
  /// [autoscalingTargetHighPriorityCpuUtilizationPercent] The target high priority cpu utilization percentage that the autoscaler
  /// [autoscalingTargetTotalCpuUtilizationPercent] The target total cpu utilization percentage that the autoscaler
  /// [disableHighPriorityCpuAutoscaling] If true, disables high priority CPU autoscaling for this replica and ignores
  /// [disableTotalCpuAutoscaling] If true, disables total CPU autoscaling for this replica and ignores
  const GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride({
    required this.autoscalingLimits,
    required this.autoscalingTargetHighPriorityCpuUtilizationPercent,
    required this.autoscalingTargetTotalCpuUtilizationPercent,
    required this.disableHighPriorityCpuAutoscaling,
    required this.disableTotalCpuAutoscaling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingLimits': pulumi.Input.mapInputValue<List<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit>, List<Map<String, dynamic>>>(autoscalingLimits, (value) => pulumi.Input.encodeList<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoscalingTargetHighPriorityCpuUtilizationPercent': autoscalingTargetHighPriorityCpuUtilizationPercent,
      'autoscalingTargetTotalCpuUtilizationPercent': autoscalingTargetTotalCpuUtilizationPercent,
      'disableHighPriorityCpuAutoscaling': disableHighPriorityCpuAutoscaling,
      'disableTotalCpuAutoscaling': disableTotalCpuAutoscaling,
    };
  }

  factory GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride.fromMap(Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride(
      autoscalingLimits: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit>(map['autoscalingLimits']!, (value) => GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit.fromMap((value as Map).cast<String, dynamic>()))),
      autoscalingTargetHighPriorityCpuUtilizationPercent: pulumi.Input.fromValue((map['autoscalingTargetHighPriorityCpuUtilizationPercent'] as num).toInt()),
      autoscalingTargetTotalCpuUtilizationPercent: pulumi.Input.fromValue((map['autoscalingTargetTotalCpuUtilizationPercent'] as num).toInt()),
      disableHighPriorityCpuAutoscaling: pulumi.Input.fromValue(map['disableHighPriorityCpuAutoscaling'] as bool),
      disableTotalCpuAutoscaling: pulumi.Input.fromValue(map['disableTotalCpuAutoscaling'] as bool),
    );
  }
}
