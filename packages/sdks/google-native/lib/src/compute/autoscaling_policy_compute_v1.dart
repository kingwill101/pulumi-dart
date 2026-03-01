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
  final int? coolDownPeriodSec;
  /// Defines the CPU utilization policy that allows the autoscaler to scale based on the average CPU utilization of a managed instance group.
  final AutoscalingPolicyCpuUtilizationComputeV1? cpuUtilization;
  /// Configuration parameters of autoscaling based on a custom metric.
  final List<AutoscalingPolicyCustomMetricUtilizationComputeV1>? customMetricUtilizations;
  /// Configuration parameters of autoscaling based on load balancer.
  final AutoscalingPolicyLoadBalancingUtilizationComputeV1? loadBalancingUtilization;
  /// The maximum number of instances that the autoscaler can scale out to. This is required when creating or updating an autoscaler. The maximum number of replicas must not be lower than minimal number of replicas.
  final int? maxNumReplicas;
  /// The minimum number of replicas that the autoscaler can scale in to. This cannot be less than 0. If not provided, autoscaler chooses a default value depending on maximum number of instances allowed.
  final int? minNumReplicas;
  /// Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
  final AutoscalingPolicyModeComputeV1? mode;
  final AutoscalingPolicyScaleInControlComputeV1? scaleInControl;
  /// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler, and they can overlap. During overlapping periods the greatest min_required_replicas of all scaling schedules is applied. Up to 128 scaling schedules are allowed.
  final Map<String, String>? scalingSchedules;

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
      'cpuUtilization': ?cpuUtilization == null ? null : cpuUtilization!.toMap(),
      'customMetricUtilizations': ?customMetricUtilizations == null ? null : pulumi.Input.encodeList<AutoscalingPolicyCustomMetricUtilizationComputeV1, Map<String, dynamic>>(customMetricUtilizations!, (value) => value.toMap()),
      'loadBalancingUtilization': ?loadBalancingUtilization == null ? null : loadBalancingUtilization!.toMap(),
      'maxNumReplicas': ?maxNumReplicas,
      'minNumReplicas': ?minNumReplicas,
      'mode': ?mode == null ? null : mode!.value,
      'scaleInControl': ?scaleInControl == null ? null : scaleInControl!.toMap(),
      'scalingSchedules': ?scalingSchedules,
    };
  }

  factory AutoscalingPolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyComputeV1(
      coolDownPeriodSec: map['coolDownPeriodSec'] == null ? null : map['coolDownPeriodSec'] as int,
      cpuUtilization: map['cpuUtilization'] == null ? null : AutoscalingPolicyCpuUtilizationComputeV1.fromMap((map['cpuUtilization'] as Map).cast<String, dynamic>()),
      customMetricUtilizations: map['customMetricUtilizations'] == null ? null : pulumi.Input.decodeList<AutoscalingPolicyCustomMetricUtilizationComputeV1>(map['customMetricUtilizations'], (value) => AutoscalingPolicyCustomMetricUtilizationComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancingUtilization: map['loadBalancingUtilization'] == null ? null : AutoscalingPolicyLoadBalancingUtilizationComputeV1.fromMap((map['loadBalancingUtilization'] as Map).cast<String, dynamic>()),
      maxNumReplicas: map['maxNumReplicas'] == null ? null : map['maxNumReplicas'] as int,
      minNumReplicas: map['minNumReplicas'] == null ? null : map['minNumReplicas'] as int,
      mode: map['mode'] == null ? null : AutoscalingPolicyModeComputeV1.fromValue(map['mode'] as String),
      scaleInControl: map['scaleInControl'] == null ? null : AutoscalingPolicyScaleInControlComputeV1.fromMap((map['scaleInControl'] as Map).cast<String, dynamic>()),
      scalingSchedules: map['scalingSchedules'] == null ? null : (map['scalingSchedules'] as Map).cast<String, String>(),
    );
  }
}

