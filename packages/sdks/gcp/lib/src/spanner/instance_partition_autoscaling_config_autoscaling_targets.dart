// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePartitionAutoscalingConfigAutoscalingTargets {
  /// Specifies the target high priority cpu utilization percentage that the autoscaler
  /// should be trying to achieve for the instance partition.
  /// This number is on a scale from 0 (no utilization) to 100 (full utilization).
  final pulumi.Input<int>? highPriorityCpuUtilizationPercent;
  /// Specifies the target storage utilization percentage that the autoscaler
  /// should be trying to achieve for the instance partition.
  /// This number is on a scale from 0 (no utilization) to 100 (full utilization).
  final pulumi.Input<int>? storageUtilizationPercent;
  /// Specifies the target total cpu utilization percentage that the autoscaler
  /// should be trying to achieve for the instance partition.
  /// This number is on a scale from 0 (no utilization) to 100 (full utilization). The valid range is [10, 90] inclusive.
  /// If not specified or set to 0, the autoscaler will skip scaling based on total cpu utilization.
  /// The value should be higher than highPriorityCpuUtilizationPercent if present.
  final pulumi.Input<int>? totalCpuUtilizationPercent;

  /// Creates a new [InstancePartitionAutoscalingConfigAutoscalingTargets].
  /// [highPriorityCpuUtilizationPercent] Specifies the target high priority cpu utilization percentage that the autoscaler
  /// [storageUtilizationPercent] Specifies the target storage utilization percentage that the autoscaler
  /// [totalCpuUtilizationPercent] Specifies the target total cpu utilization percentage that the autoscaler
  const InstancePartitionAutoscalingConfigAutoscalingTargets({
    this.highPriorityCpuUtilizationPercent,
    this.storageUtilizationPercent,
    this.totalCpuUtilizationPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'highPriorityCpuUtilizationPercent': ?highPriorityCpuUtilizationPercent,
      'storageUtilizationPercent': ?storageUtilizationPercent,
      'totalCpuUtilizationPercent': ?totalCpuUtilizationPercent,
    };
  }

  factory InstancePartitionAutoscalingConfigAutoscalingTargets.fromMap(Map<String, dynamic> map) {
    return InstancePartitionAutoscalingConfigAutoscalingTargets(
      highPriorityCpuUtilizationPercent: (() { final guardedValue = map['highPriorityCpuUtilizationPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageUtilizationPercent: (() { final guardedValue = map['storageUtilizationPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      totalCpuUtilizationPercent: (() { final guardedValue = map['totalCpuUtilizationPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
