// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_cpu_utilization_compute_beta.dart';
import 'autoscaling_policy_custom_metric_utilization_compute_beta.dart';
import 'autoscaling_policy_load_balancing_utilization_compute_beta.dart';
import 'autoscaling_policy_mode_compute_beta.dart';
import 'autoscaling_policy_scale_down_control_compute_beta.dart';
import 'autoscaling_policy_scale_in_control_compute_beta.dart';

/// Cloud Autoscaler policy.
class AutoscalingPolicyComputeBeta {
  /// The number of seconds that your application takes to initialize on a VM instance. This is referred to as the [initialization period](/compute/docs/autoscaler#cool_down_period). Specifying an accurate initialization period improves autoscaler decisions. For example, when scaling out, the autoscaler ignores data from VMs that are still initializing because those VMs might not yet represent normal usage of your application. The default initialization period is 60 seconds. Initialization periods might vary because of numerous factors. We recommend that you test how long your application takes to initialize. To do this, create a VM and time your application's startup process.
  final pulumi.Input<int>? coolDownPeriodSec;
  /// Defines the CPU utilization policy that allows the autoscaler to scale based on the average CPU utilization of a managed instance group.
  final pulumi.Input<AutoscalingPolicyCpuUtilizationComputeBeta>? cpuUtilization;
  /// Configuration parameters of autoscaling based on a custom metric.
  final pulumi.Input<List<AutoscalingPolicyCustomMetricUtilizationComputeBeta>>? customMetricUtilizations;
  /// Configuration parameters of autoscaling based on load balancer.
  final pulumi.Input<AutoscalingPolicyLoadBalancingUtilizationComputeBeta>? loadBalancingUtilization;
  /// The maximum number of instances that the autoscaler can scale out to. This is required when creating or updating an autoscaler. The maximum number of replicas must not be lower than minimal number of replicas.
  final pulumi.Input<int>? maxNumReplicas;
  /// The minimum number of replicas that the autoscaler can scale in to. This cannot be less than 0. If not provided, autoscaler chooses a default value depending on maximum number of instances allowed.
  final pulumi.Input<int>? minNumReplicas;
  /// Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
  final pulumi.Input<AutoscalingPolicyModeComputeBeta>? mode;
  final pulumi.Input<AutoscalingPolicyScaleDownControlComputeBeta>? scaleDownControl;
  final pulumi.Input<AutoscalingPolicyScaleInControlComputeBeta>? scaleInControl;
  /// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler, and they can overlap. During overlapping periods the greatest min_required_replicas of all scaling schedules is applied. Up to 128 scaling schedules are allowed.
  final pulumi.Input<Map<String, String>>? scalingSchedules;

  /// Creates a new [AutoscalingPolicyComputeBeta].
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
  AutoscalingPolicyComputeBeta({
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
      'cpuUtilization': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyCpuUtilizationComputeBeta, Map<String, dynamic>>(cpuUtilization, (value) => value.toMap()),
      'customMetricUtilizations': ?pulumi.Input.mapOptionalInputValue<List<AutoscalingPolicyCustomMetricUtilizationComputeBeta>, List<Map<String, dynamic>>>(customMetricUtilizations, (value) => pulumi.Input.encodeList<AutoscalingPolicyCustomMetricUtilizationComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancingUtilization': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyLoadBalancingUtilizationComputeBeta, Map<String, dynamic>>(loadBalancingUtilization, (value) => value.toMap()),
      'maxNumReplicas': ?maxNumReplicas,
      'minNumReplicas': ?minNumReplicas,
      'mode': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyModeComputeBeta, String>(mode, (value) => value.value),
      'scaleDownControl': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyScaleDownControlComputeBeta, Map<String, dynamic>>(scaleDownControl, (value) => value.toMap()),
      'scaleInControl': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyScaleInControlComputeBeta, Map<String, dynamic>>(scaleInControl, (value) => value.toMap()),
      'scalingSchedules': ?scalingSchedules,
    };
  }

  factory AutoscalingPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyComputeBeta(
      coolDownPeriodSec: map['coolDownPeriodSec'] == null ? null : (map['coolDownPeriodSec'] as int).input(),
      cpuUtilization: map['cpuUtilization'] == null ? null : (AutoscalingPolicyCpuUtilizationComputeBeta.fromMap((map['cpuUtilization'] as Map).cast<String, dynamic>())).input(),
      customMetricUtilizations: map['customMetricUtilizations'] == null ? null : (pulumi.Input.decodeList<AutoscalingPolicyCustomMetricUtilizationComputeBeta>(map['customMetricUtilizations'], (value) => AutoscalingPolicyCustomMetricUtilizationComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancingUtilization: map['loadBalancingUtilization'] == null ? null : (AutoscalingPolicyLoadBalancingUtilizationComputeBeta.fromMap((map['loadBalancingUtilization'] as Map).cast<String, dynamic>())).input(),
      maxNumReplicas: map['maxNumReplicas'] == null ? null : (map['maxNumReplicas'] as int).input(),
      minNumReplicas: map['minNumReplicas'] == null ? null : (map['minNumReplicas'] as int).input(),
      mode: map['mode'] == null ? null : (AutoscalingPolicyModeComputeBeta.fromValue(map['mode'] as String)).input(),
      scaleDownControl: map['scaleDownControl'] == null ? null : (AutoscalingPolicyScaleDownControlComputeBeta.fromMap((map['scaleDownControl'] as Map).cast<String, dynamic>())).input(),
      scaleInControl: map['scaleInControl'] == null ? null : (AutoscalingPolicyScaleInControlComputeBeta.fromMap((map['scaleInControl'] as Map).cast<String, dynamic>())).input(),
      scalingSchedules: map['scalingSchedules'] == null ? null : ((map['scalingSchedules'] as Map).cast<String, String>()).input(),
    );
  }
}

