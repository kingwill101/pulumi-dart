// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_autoscaler_autoscaling_policy_cpu_utilization.dart';
import 'region_autoscaler_autoscaling_policy_load_balancing_utilization.dart';
import 'region_autoscaler_autoscaling_policy_metric.dart';
import 'region_autoscaler_autoscaling_policy_scale_down_control.dart';
import 'region_autoscaler_autoscaling_policy_scale_in_control.dart';
import 'region_autoscaler_autoscaling_policy_scaling_schedule.dart';

class RegionAutoscalerAutoscalingPolicy {
  /// The number of seconds that the autoscaler should wait before it
  /// starts collecting information from a new instance. This prevents
  /// the autoscaler from collecting information when the instance is
  /// initializing, during which the collected usage would not be
  /// reliable. The default time autoscaler waits is 60 seconds.
  /// Virtual machine initialization times might vary because of
  /// numerous factors. We recommend that you test how long an
  /// instance may take to initialize. To do this, create an instance
  /// and time the startup process.
  final pulumi.Input<int>? cooldownPeriod;
  /// Defines the CPU utilization policy that allows the autoscaler to
  /// scale based on the average CPU utilization of a managed instance
  /// group.
  /// Structure is documented below.
  final pulumi.Input<RegionAutoscalerAutoscalingPolicyCpuUtilization>? cpuUtilization;
  /// Configuration parameters of autoscaling based on a load balancer.
  /// Structure is documented below.
  final pulumi.Input<RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization>? loadBalancingUtilization;
  /// The maximum number of instances that the autoscaler can scale up
  /// to. This is required when creating or updating an autoscaler. The
  /// maximum number of replicas should not be lower than minimal number
  /// of replicas.
  final pulumi.Input<int> maxReplicas;
  /// Configuration parameters of autoscaling based on a custom metric.
  /// Structure is documented below.
  final pulumi.Input<List<RegionAutoscalerAutoscalingPolicyMetric>>? metrics;
  /// The minimum number of replicas that the autoscaler can scale down
  /// to. This cannot be less than 0. If not provided, autoscaler will
  /// choose a default value depending on maximum number of instances
  /// allowed.
  final pulumi.Input<int> minReplicas;
  /// Defines operating mode for this policy.
  final pulumi.Input<String>? mode;
  /// Defines scale down controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events
  /// Structure is documented below.
  final pulumi.Input<RegionAutoscalerAutoscalingPolicyScaleDownControl>? scaleDownControl;
  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events
  /// Structure is documented below.
  final pulumi.Input<RegionAutoscalerAutoscalingPolicyScaleInControl>? scaleInControl;
  /// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap.
  /// Structure is documented below.
  final pulumi.Input<List<RegionAutoscalerAutoscalingPolicyScalingSchedule>>? scalingSchedules;

  /// Creates a new [RegionAutoscalerAutoscalingPolicy].
  /// [cooldownPeriod] The number of seconds that the autoscaler should wait before it
  /// [cpuUtilization] Defines the CPU utilization policy that allows the autoscaler to
  /// [loadBalancingUtilization] Configuration parameters of autoscaling based on a load balancer.
  /// [maxReplicas] The maximum number of instances that the autoscaler can scale up
  /// [metrics] Configuration parameters of autoscaling based on a custom metric.
  /// [minReplicas] The minimum number of replicas that the autoscaler can scale down
  /// [mode] Defines operating mode for this policy.
  /// [scaleDownControl] Defines scale down controls to reduce the risk of response latency
  /// [scaleInControl] Defines scale in controls to reduce the risk of response latency
  /// [scalingSchedules] Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap.
  const RegionAutoscalerAutoscalingPolicy({
    this.cooldownPeriod,
    this.cpuUtilization,
    this.loadBalancingUtilization,
    required this.maxReplicas,
    this.metrics,
    required this.minReplicas,
    this.mode,
    this.scaleDownControl,
    this.scaleInControl,
    this.scalingSchedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownPeriod': ?cooldownPeriod,
      'cpuUtilization': ?pulumi.Input.mapOptionalInputValue<RegionAutoscalerAutoscalingPolicyCpuUtilization, Map<String, dynamic>>(cpuUtilization, (value) => value.toMap()),
      'loadBalancingUtilization': ?pulumi.Input.mapOptionalInputValue<RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization, Map<String, dynamic>>(loadBalancingUtilization, (value) => value.toMap()),
      'maxReplicas': maxReplicas,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<RegionAutoscalerAutoscalingPolicyMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<RegionAutoscalerAutoscalingPolicyMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minReplicas': minReplicas,
      'mode': ?mode,
      'scaleDownControl': ?pulumi.Input.mapOptionalInputValue<RegionAutoscalerAutoscalingPolicyScaleDownControl, Map<String, dynamic>>(scaleDownControl, (value) => value.toMap()),
      'scaleInControl': ?pulumi.Input.mapOptionalInputValue<RegionAutoscalerAutoscalingPolicyScaleInControl, Map<String, dynamic>>(scaleInControl, (value) => value.toMap()),
      'scalingSchedules': ?pulumi.Input.mapOptionalInputValue<List<RegionAutoscalerAutoscalingPolicyScalingSchedule>, List<Map<String, dynamic>>>(scalingSchedules, (value) => pulumi.Input.encodeList<RegionAutoscalerAutoscalingPolicyScalingSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionAutoscalerAutoscalingPolicy.fromMap(Map<String, dynamic> map) {
    return RegionAutoscalerAutoscalingPolicy(
      cooldownPeriod: (() { final guardedValue = map['cooldownPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpuUtilization: (() { final guardedValue = map['cpuUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionAutoscalerAutoscalingPolicyCpuUtilization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loadBalancingUtilization: (() { final guardedValue = map['loadBalancingUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxReplicas: pulumi.Input.fromValue(map['maxReplicas'] as int),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionAutoscalerAutoscalingPolicyMetric>(guardedValue, (value) => RegionAutoscalerAutoscalingPolicyMetric.fromMap((value as Map).cast<String, dynamic>()))); })(),
      minReplicas: pulumi.Input.fromValue(map['minReplicas'] as int),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownControl: (() { final guardedValue = map['scaleDownControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionAutoscalerAutoscalingPolicyScaleDownControl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scaleInControl: (() { final guardedValue = map['scaleInControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionAutoscalerAutoscalingPolicyScaleInControl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scalingSchedules: (() { final guardedValue = map['scalingSchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionAutoscalerAutoscalingPolicyScalingSchedule>(guardedValue, (value) => RegionAutoscalerAutoscalingPolicyScalingSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

