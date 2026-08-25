// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaler_autoscaling_policy_cpu_utilization.dart';
import 'autoscaler_autoscaling_policy_load_balancing_utilization.dart';
import 'autoscaler_autoscaling_policy_metric.dart';
import 'autoscaler_autoscaling_policy_scale_down_control.dart';
import 'autoscaler_autoscaling_policy_scale_in_control.dart';
import 'autoscaler_autoscaling_policy_scaling_schedule.dart';

class AutoscalerAutoscalingPolicy {
  /// The number of seconds that the autoscaler should wait before it
  /// starts collecting information from a new instance. This prevents
  /// the autoscaler from collecting information when the instance is
  /// initializing, during which the collected usage would not be
  /// reliable. The default time autoscaler waits is 60 seconds.
  /// Virtual machine initialization times might vary because of
  /// numerous factors. We recommend that you test how long an
  /// instance may take to initialize. To do this, create an instance
  /// and time the startup process.
  final pulumi.Input<int?>? cooldownPeriod;
  /// Defines the CPU utilization policy that allows the autoscaler to
  /// scale based on the average CPU utilization of a managed instance
  /// group.
  /// Structure is documented below.
  final pulumi.Input<AutoscalerAutoscalingPolicyCpuUtilization?>? cpuUtilization;
  /// Configuration parameters of autoscaling based on a load balancer.
  /// Structure is documented below.
  final pulumi.Input<AutoscalerAutoscalingPolicyLoadBalancingUtilization?>? loadBalancingUtilization;
  /// The maximum number of instances that the autoscaler can scale up
  /// to. This is required when creating or updating an autoscaler. The
  /// maximum number of replicas should not be lower than minimal number
  /// of replicas.
  final pulumi.Input<int> maxReplicas;
  /// Configuration parameters of autoscaling based on a custom metric.
  /// Structure is documented below.
  final pulumi.Input<List<AutoscalerAutoscalingPolicyMetric>?>? metrics;
  /// The minimum number of replicas that the autoscaler can scale down
  /// to. This cannot be less than 0. If not provided, autoscaler will
  /// choose a default value depending on maximum number of instances
  /// allowed.
  final pulumi.Input<int> minReplicas;
  /// Defines operating mode for this policy.
  final pulumi.Input<String?>? mode;
  /// (Optional, Beta)
  /// Defines scale down controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events
  /// Structure is documented below.
  final pulumi.Input<AutoscalerAutoscalingPolicyScaleDownControl?>? scaleDownControl;
  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events
  /// Structure is documented below.
  final pulumi.Input<AutoscalerAutoscalingPolicyScaleInControl?>? scaleInControl;
  /// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap.
  /// Structure is documented below.
  final pulumi.Input<List<AutoscalerAutoscalingPolicyScalingSchedule>?>? scalingSchedules;
  /// The number of seconds that the autoscaler waits for load stabilization
  /// before making scale-in decisions.
  /// This might appear as a delay in scaling in but it is an important mechanism
  /// for your application to not have fluctuating size due to short term load
  /// fluctuations.
  final pulumi.Input<int?>? stabilizationPeriod;

  /// Creates a new [AutoscalerAutoscalingPolicy].
  /// [cooldownPeriod] The number of seconds that the autoscaler should wait before it
  /// [cpuUtilization] Defines the CPU utilization policy that allows the autoscaler to
  /// [loadBalancingUtilization] Configuration parameters of autoscaling based on a load balancer.
  /// [maxReplicas] The maximum number of instances that the autoscaler can scale up
  /// [metrics] Configuration parameters of autoscaling based on a custom metric.
  /// [minReplicas] The minimum number of replicas that the autoscaler can scale down
  /// [mode] Defines operating mode for this policy.
  /// [scaleDownControl] (Optional, Beta)
  /// [scaleInControl] Defines scale in controls to reduce the risk of response latency
  /// [scalingSchedules] Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap.
  /// [stabilizationPeriod] The number of seconds that the autoscaler waits for load stabilization
  const AutoscalerAutoscalingPolicy({
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
    this.stabilizationPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownPeriod': ?cooldownPeriod,
      'cpuUtilization': ?pulumi.Input.mapOptionalInputValue<AutoscalerAutoscalingPolicyCpuUtilization, Map<String, dynamic>>(cpuUtilization, (value) => value.toMap()),
      'loadBalancingUtilization': ?pulumi.Input.mapOptionalInputValue<AutoscalerAutoscalingPolicyLoadBalancingUtilization, Map<String, dynamic>>(loadBalancingUtilization, (value) => value.toMap()),
      'maxReplicas': maxReplicas,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<AutoscalerAutoscalingPolicyMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<AutoscalerAutoscalingPolicyMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minReplicas': minReplicas,
      'mode': ?mode,
      'scaleDownControl': ?pulumi.Input.mapOptionalInputValue<AutoscalerAutoscalingPolicyScaleDownControl, Map<String, dynamic>>(scaleDownControl, (value) => value.toMap()),
      'scaleInControl': ?pulumi.Input.mapOptionalInputValue<AutoscalerAutoscalingPolicyScaleInControl, Map<String, dynamic>>(scaleInControl, (value) => value.toMap()),
      'scalingSchedules': ?pulumi.Input.mapOptionalInputValue<List<AutoscalerAutoscalingPolicyScalingSchedule>, List<Map<String, dynamic>>>(scalingSchedules, (value) => pulumi.Input.encodeList<AutoscalerAutoscalingPolicyScalingSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stabilizationPeriod': ?stabilizationPeriod,
    };
  }

  factory AutoscalerAutoscalingPolicy.fromMap(Map<String, dynamic> map) {
    return AutoscalerAutoscalingPolicy(
      cooldownPeriod: (() { final guardedValue = map['cooldownPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      cpuUtilization: (() { final guardedValue = map['cpuUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalerAutoscalingPolicyCpuUtilization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loadBalancingUtilization: (() { final guardedValue = map['loadBalancingUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalerAutoscalingPolicyLoadBalancingUtilization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxReplicas: pulumi.Input.fromValue((map['maxReplicas'] as num).toInt()),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoscalerAutoscalingPolicyMetric>(guardedValue, (value) => AutoscalerAutoscalingPolicyMetric.fromMap((value as Map).cast<String, dynamic>()))); })(),
      minReplicas: pulumi.Input.fromValue((map['minReplicas'] as num).toInt()),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownControl: (() { final guardedValue = map['scaleDownControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalerAutoscalingPolicyScaleDownControl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scaleInControl: (() { final guardedValue = map['scaleInControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalerAutoscalingPolicyScaleInControl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scalingSchedules: (() { final guardedValue = map['scalingSchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoscalerAutoscalingPolicyScalingSchedule>(guardedValue, (value) => AutoscalerAutoscalingPolicyScalingSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stabilizationPeriod: (() { final guardedValue = map['stabilizationPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
