// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_autoscaling_config_asymmetric_autoscaling_option_overrides_autoscaling_limits.dart';

class InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits?>? autoscalingLimits;
  /// The target high priority cpu utilization percentage that the autoscaler
  /// should be trying to achieve for this replica.
  /// This number is on a scale from 0 (no utilization) to 100 (full utilization).
  final pulumi.Input<int?>? autoscalingTargetHighPriorityCpuUtilizationPercent;
  /// The target total cpu utilization percentage that the autoscaler
  /// should be trying to achieve for this replica.
  /// This number is on a scale from 0 (no utilization) to 100 (full utilization).
  final pulumi.Input<int?>? autoscalingTargetTotalCpuUtilizationPercent;
  /// If true, disables high priority CPU autoscaling for this replica and ignores
  /// highPriorityCpuUtilizationPercent in the top-level autoscaling configuration.
  final pulumi.Input<bool?>? disableHighPriorityCpuAutoscaling;
  /// If true, disables total CPU autoscaling for this replica and ignores
  /// totalCpuUtilizationPercent in the top-level autoscaling configuration.
  final pulumi.Input<bool?>? disableTotalCpuAutoscaling;

  /// Creates a new [InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides].
  /// [autoscalingLimits] A nested object resource.
  /// [autoscalingTargetHighPriorityCpuUtilizationPercent] The target high priority cpu utilization percentage that the autoscaler
  /// [autoscalingTargetTotalCpuUtilizationPercent] The target total cpu utilization percentage that the autoscaler
  /// [disableHighPriorityCpuAutoscaling] If true, disables high priority CPU autoscaling for this replica and ignores
  /// [disableTotalCpuAutoscaling] If true, disables total CPU autoscaling for this replica and ignores
  const InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides({
    this.autoscalingLimits,
    this.autoscalingTargetHighPriorityCpuUtilizationPercent,
    this.autoscalingTargetTotalCpuUtilizationPercent,
    this.disableHighPriorityCpuAutoscaling,
    this.disableTotalCpuAutoscaling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingLimits': ?pulumi.Input.mapOptionalInputValue<InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits, Map<String, dynamic>>(autoscalingLimits, (value) => value.toMap()),
      'autoscalingTargetHighPriorityCpuUtilizationPercent': ?autoscalingTargetHighPriorityCpuUtilizationPercent,
      'autoscalingTargetTotalCpuUtilizationPercent': ?autoscalingTargetTotalCpuUtilizationPercent,
      'disableHighPriorityCpuAutoscaling': ?disableHighPriorityCpuAutoscaling,
      'disableTotalCpuAutoscaling': ?disableTotalCpuAutoscaling,
    };
  }

  factory InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides.fromMap(Map<String, dynamic> map) {
    return InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides(
      autoscalingLimits: (() { final guardedValue = map['autoscalingLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoscalingTargetHighPriorityCpuUtilizationPercent: (() { final guardedValue = map['autoscalingTargetHighPriorityCpuUtilizationPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      autoscalingTargetTotalCpuUtilizationPercent: (() { final guardedValue = map['autoscalingTargetTotalCpuUtilizationPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      disableHighPriorityCpuAutoscaling: (() { final guardedValue = map['disableHighPriorityCpuAutoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableTotalCpuAutoscaling: (() { final guardedValue = map['disableTotalCpuAutoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
