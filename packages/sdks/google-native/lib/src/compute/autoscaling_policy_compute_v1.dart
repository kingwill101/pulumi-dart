// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_cpu_utilization_compute_v1.dart';
import 'autoscaling_policy_custom_metric_utilization_compute_v1.dart';
import 'autoscaling_policy_load_balancing_utilization_compute_v1.dart';
import 'autoscaling_policy_mode_compute_v1.dart';
import 'autoscaling_policy_scale_in_control_compute_v1.dart';

/// Cloud Autoscaler policy.
class AutoscalingPolicyComputeV1 {
  /// The number of seconds that your application takes to initialize on a VM instance. This is referred to as the [initialization period](/compute/docs/autoscaler#cool_down_period). Specifying an accurate initialization period improves autoscaler decisions. For example, when scaling out, the autoscaler ignores data from VMs that are still initializing because those VMs might not yet represent normal usage of your application. The default initialization period is 60 seconds. Initialization periods might vary because of numerous factors. We recommend that you test how long your application takes to initialize. To do this, create a VM and time your application's startup process.
  final pulumi.Input<int>? coolDownPeriodSec;

  /// Defines the CPU utilization policy that allows the autoscaler to scale based on the average CPU utilization of a managed instance group.
  final pulumi.Input<AutoscalingPolicyCpuUtilizationComputeV1>? cpuUtilization;

  /// Configuration parameters of autoscaling based on a custom metric.
  final pulumi.Input<List<AutoscalingPolicyCustomMetricUtilizationComputeV1>>?
  customMetricUtilizations;

  /// Configuration parameters of autoscaling based on load balancer.
  final pulumi.Input<AutoscalingPolicyLoadBalancingUtilizationComputeV1>?
  loadBalancingUtilization;

  /// The maximum number of instances that the autoscaler can scale out to. This is required when creating or updating an autoscaler. The maximum number of replicas must not be lower than minimal number of replicas.
  final pulumi.Input<int>? maxNumReplicas;

  /// The minimum number of replicas that the autoscaler can scale in to. This cannot be less than 0. If not provided, autoscaler chooses a default value depending on maximum number of instances allowed.
  final pulumi.Input<int>? minNumReplicas;

  /// Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
  final pulumi.Input<AutoscalingPolicyModeComputeV1>? mode;
  final pulumi.Input<AutoscalingPolicyScaleInControlComputeV1>? scaleInControl;

  /// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler, and they can overlap. During overlapping periods the greatest min_required_replicas of all scaling schedules is applied. Up to 128 scaling schedules are allowed.
  final pulumi.Input<Map<String, String>>? scalingSchedules;

  /// Creates a new [AutoscalingPolicyComputeV1].
  /// [coolDownPeriodSec] The number of seconds that your application takes to initialize on a VM instance. This is referred to as the [initialization period](/compute/docs/autoscaler#cool_down_period). Specifying an accurate initialization period improves autoscaler decisions. For example, when scaling out, the autoscaler ignores data from VMs that are still initializing because those VMs might not yet represent normal usage of your application. The default initialization period is 60 seconds. Initialization periods might vary because of numerous factors. We recommend that you test how long your application takes to initialize. To do this, create a VM and time your application's startup process.
  /// [cpuUtilization] Defines the CPU utilization policy that allows the autoscaler to scale based on the average CPU utilization of a managed instance group.
  /// [customMetricUtilizations] Configuration parameters of autoscaling based on a custom metric.
  /// [loadBalancingUtilization] Configuration parameters of autoscaling based on load balancer.
  /// [maxNumReplicas] The maximum number of instances that the autoscaler can scale out to. This is required when creating or updating an autoscaler. The maximum number of replicas must not be lower than minimal number of replicas.
  /// [minNumReplicas] The minimum number of replicas that the autoscaler can scale in to. This cannot be less than 0. If not provided, autoscaler chooses a default value depending on maximum number of instances allowed.
  /// [mode] Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
  /// [scaleInControl] Optional.
  /// [scalingSchedules] Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler, and they can overlap. During overlapping periods the greatest min_required_replicas of all scaling schedules is applied. Up to 128 scaling schedules are allowed.
  AutoscalingPolicyComputeV1({
    this.coolDownPeriodSec,
    this.cpuUtilization,
    this.customMetricUtilizations,
    this.loadBalancingUtilization,
    this.maxNumReplicas,
    this.minNumReplicas,
    this.mode,
    this.scaleInControl,
    this.scalingSchedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coolDownPeriodSec': ?coolDownPeriodSec,
      'cpuUtilization':
          ?pulumi.Input.mapOptionalInputValue<
            AutoscalingPolicyCpuUtilizationComputeV1,
            Map<String, dynamic>
          >(cpuUtilization, (value) => value.toMap()),
      'customMetricUtilizations':
          ?pulumi.Input.mapOptionalInputValue<
            List<AutoscalingPolicyCustomMetricUtilizationComputeV1>,
            List<Map<String, dynamic>>
          >(
            customMetricUtilizations,
            (value) =>
                pulumi.Input.encodeList<
                  AutoscalingPolicyCustomMetricUtilizationComputeV1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'loadBalancingUtilization':
          ?pulumi.Input.mapOptionalInputValue<
            AutoscalingPolicyLoadBalancingUtilizationComputeV1,
            Map<String, dynamic>
          >(loadBalancingUtilization, (value) => value.toMap()),
      'maxNumReplicas': ?maxNumReplicas,
      'minNumReplicas': ?minNumReplicas,
      'mode':
          ?pulumi.Input.mapOptionalInputValue<
            AutoscalingPolicyModeComputeV1,
            String
          >(mode, (value) => value.wireValue),
      'scaleInControl':
          ?pulumi.Input.mapOptionalInputValue<
            AutoscalingPolicyScaleInControlComputeV1,
            Map<String, dynamic>
          >(scaleInControl, (value) => value.toMap()),
      'scalingSchedules': ?scalingSchedules,
    };
  }

  factory AutoscalingPolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyComputeV1(
      coolDownPeriodSec: (() {
        final guardedValue = map['coolDownPeriodSec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cpuUtilization: (() {
        final guardedValue = map['cpuUtilization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutoscalingPolicyCpuUtilizationComputeV1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      customMetricUtilizations: (() {
        final guardedValue = map['customMetricUtilizations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AutoscalingPolicyCustomMetricUtilizationComputeV1
          >(
            guardedValue,
            (value) =>
                AutoscalingPolicyCustomMetricUtilizationComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      loadBalancingUtilization: (() {
        final guardedValue = map['loadBalancingUtilization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutoscalingPolicyLoadBalancingUtilizationComputeV1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maxNumReplicas: (() {
        final guardedValue = map['maxNumReplicas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minNumReplicas: (() {
        final guardedValue = map['minNumReplicas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutoscalingPolicyModeComputeV1.fromValue(guardedValue as String),
        );
      })(),
      scaleInControl: (() {
        final guardedValue = map['scaleInControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AutoscalingPolicyScaleInControlComputeV1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      scalingSchedules: (() {
        final guardedValue = map['scalingSchedules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
