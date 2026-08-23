// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_cpu_utilization.dart';
import 'autoscaling_policy_custom_metric_utilization.dart';
import 'autoscaling_policy_load_balancing_utilization.dart';
import 'autoscaling_policy_mode.dart';
import 'autoscaling_policy_scale_down_control.dart';
import 'autoscaling_policy_scale_in_control.dart';

/// Cloud Autoscaler policy.
class AutoscalingPolicy {
  /// The number of seconds that your application takes to initialize on a VM instance. This is referred to as the [initialization period](/compute/docs/autoscaler#cool_down_period). Specifying an accurate initialization period improves autoscaler decisions. For example, when scaling out, the autoscaler ignores data from VMs that are still initializing because those VMs might not yet represent normal usage of your application. The default initialization period is 60 seconds. Initialization periods might vary because of numerous factors. We recommend that you test how long your application takes to initialize. To do this, create a VM and time your application's startup process.
  final pulumi.Input<int>? coolDownPeriodSec;
  /// Defines the CPU utilization policy that allows the autoscaler to scale based on the average CPU utilization of a managed instance group.
  final pulumi.Input<AutoscalingPolicyCpuUtilization>? cpuUtilization;
  /// Configuration parameters of autoscaling based on a custom metric.
  final pulumi.Input<List<AutoscalingPolicyCustomMetricUtilization>>? customMetricUtilizations;
  /// Configuration parameters of autoscaling based on load balancer.
  final pulumi.Input<AutoscalingPolicyLoadBalancingUtilization>? loadBalancingUtilization;
  /// The maximum number of instances that the autoscaler can scale out to. This is required when creating or updating an autoscaler. The maximum number of replicas must not be lower than minimal number of replicas.
  final pulumi.Input<int>? maxNumReplicas;
  /// The minimum number of replicas that the autoscaler can scale in to. This cannot be less than 0. If not provided, autoscaler chooses a default value depending on maximum number of instances allowed.
  final pulumi.Input<int>? minNumReplicas;
  /// Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
  final pulumi.Input<AutoscalingPolicyMode>? mode;
  final pulumi.Input<AutoscalingPolicyScaleDownControl>? scaleDownControl;
  final pulumi.Input<AutoscalingPolicyScaleInControl>? scaleInControl;
  /// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler, and they can overlap. During overlapping periods the greatest min_required_replicas of all scaling schedules is applied. Up to 128 scaling schedules are allowed.
  final pulumi.Input<Map<String, String>>? scalingSchedules;

  /// Creates a new [AutoscalingPolicy].
  /// [coolDownPeriodSec] The number of seconds that your application takes to initialize on a VM instance. This is referred to as the [initialization period](/compute/docs/autoscaler#cool_down_period). Specifying an accurate initialization period improves autoscaler decisions. For example, when scaling out, the autoscaler ignores data from VMs that are still initializing because those VMs might not yet represent normal usage of your application. The default initialization period is 60 seconds. Initialization periods might vary because of numerous factors. We recommend that you test how long your application takes to initialize. To do this, create a VM and time your application's startup process.
  /// [cpuUtilization] Defines the CPU utilization policy that allows the autoscaler to scale based on the average CPU utilization of a managed instance group.
  /// [customMetricUtilizations] Configuration parameters of autoscaling based on a custom metric.
  /// [loadBalancingUtilization] Configuration parameters of autoscaling based on load balancer.
  /// [maxNumReplicas] The maximum number of instances that the autoscaler can scale out to. This is required when creating or updating an autoscaler. The maximum number of replicas must not be lower than minimal number of replicas.
  /// [minNumReplicas] The minimum number of replicas that the autoscaler can scale in to. This cannot be less than 0. If not provided, autoscaler chooses a default value depending on maximum number of instances allowed.
  /// [mode] Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
  /// [scaleDownControl] Optional.
  /// [scaleInControl] Optional.
  /// [scalingSchedules] Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler, and they can overlap. During overlapping periods the greatest min_required_replicas of all scaling schedules is applied. Up to 128 scaling schedules are allowed.
  const AutoscalingPolicy({
    this.coolDownPeriodSec,
    this.cpuUtilization,
    this.customMetricUtilizations,
    this.loadBalancingUtilization,
    this.maxNumReplicas,
    this.minNumReplicas,
    this.mode,
    this.scaleDownControl,
    this.scaleInControl,
    this.scalingSchedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coolDownPeriodSec': ?coolDownPeriodSec,
      'cpuUtilization': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyCpuUtilization, Map<String, dynamic>>(cpuUtilization, (value) => value.toMap()),
      'customMetricUtilizations': ?pulumi.Input.mapOptionalInputValue<List<AutoscalingPolicyCustomMetricUtilization>, List<Map<String, dynamic>>>(customMetricUtilizations, (value) => pulumi.Input.encodeList<AutoscalingPolicyCustomMetricUtilization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancingUtilization': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyLoadBalancingUtilization, Map<String, dynamic>>(loadBalancingUtilization, (value) => value.toMap()),
      'maxNumReplicas': ?maxNumReplicas,
      'minNumReplicas': ?minNumReplicas,
      'mode': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyMode, String>(mode, (value) => value.wireValue),
      'scaleDownControl': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyScaleDownControl, Map<String, dynamic>>(scaleDownControl, (value) => value.toMap()),
      'scaleInControl': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyScaleInControl, Map<String, dynamic>>(scaleInControl, (value) => value.toMap()),
      'scalingSchedules': ?scalingSchedules,
    };
  }

  factory AutoscalingPolicy.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicy(
      coolDownPeriodSec: (() { final guardedValue = map['coolDownPeriodSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpuUtilization: (() { final guardedValue = map['cpuUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalingPolicyCpuUtilization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customMetricUtilizations: (() { final guardedValue = map['customMetricUtilizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoscalingPolicyCustomMetricUtilization>(guardedValue, (value) => AutoscalingPolicyCustomMetricUtilization.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loadBalancingUtilization: (() { final guardedValue = map['loadBalancingUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalingPolicyLoadBalancingUtilization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxNumReplicas: (() { final guardedValue = map['maxNumReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minNumReplicas: (() { final guardedValue = map['minNumReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalingPolicyMode.fromValue(guardedValue as String)); })(),
      scaleDownControl: (() { final guardedValue = map['scaleDownControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalingPolicyScaleDownControl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scaleInControl: (() { final guardedValue = map['scaleInControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalingPolicyScaleInControl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scalingSchedules: (() { final guardedValue = map['scalingSchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
