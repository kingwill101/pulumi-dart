// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_cpu_utilization_response_compute_beta.dart';
import 'autoscaling_policy_custom_metric_utilization_response_compute_beta.dart';
import 'autoscaling_policy_load_balancing_utilization_response_compute_beta.dart';
import 'autoscaling_policy_scale_down_control_response_compute_beta.dart';
import 'autoscaling_policy_scale_in_control_response_compute_beta.dart';

/// Cloud Autoscaler policy.
class AutoscalingPolicyResponseComputeBeta {
  /// The number of seconds that your application takes to initialize on a VM instance. This is referred to as the [initialization period](/compute/docs/autoscaler#cool_down_period). Specifying an accurate initialization period improves autoscaler decisions. For example, when scaling out, the autoscaler ignores data from VMs that are still initializing because those VMs might not yet represent normal usage of your application. The default initialization period is 60 seconds. Initialization periods might vary because of numerous factors. We recommend that you test how long your application takes to initialize. To do this, create a VM and time your application's startup process.
  final pulumi.Input<int> coolDownPeriodSec;

  /// Defines the CPU utilization policy that allows the autoscaler to scale based on the average CPU utilization of a managed instance group.
  final pulumi.Input<AutoscalingPolicyCpuUtilizationResponseComputeBeta>
  cpuUtilization;

  /// Configuration parameters of autoscaling based on a custom metric.
  final pulumi.Input<
    List<AutoscalingPolicyCustomMetricUtilizationResponseComputeBeta>
  >
  customMetricUtilizations;

  /// Configuration parameters of autoscaling based on load balancer.
  final pulumi.Input<
    AutoscalingPolicyLoadBalancingUtilizationResponseComputeBeta
  >
  loadBalancingUtilization;

  /// The maximum number of instances that the autoscaler can scale out to. This is required when creating or updating an autoscaler. The maximum number of replicas must not be lower than minimal number of replicas.
  final pulumi.Input<int> maxNumReplicas;

  /// The minimum number of replicas that the autoscaler can scale in to. This cannot be less than 0. If not provided, autoscaler chooses a default value depending on maximum number of instances allowed.
  final pulumi.Input<int> minNumReplicas;

  /// Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
  final pulumi.Input<String> mode;
  final pulumi.Input<AutoscalingPolicyScaleDownControlResponseComputeBeta>
  scaleDownControl;
  final pulumi.Input<AutoscalingPolicyScaleInControlResponseComputeBeta>
  scaleInControl;

  /// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler, and they can overlap. During overlapping periods the greatest min_required_replicas of all scaling schedules is applied. Up to 128 scaling schedules are allowed.
  final pulumi.Input<Map<String, String>> scalingSchedules;

  /// Creates a new [AutoscalingPolicyResponseComputeBeta].
  /// [coolDownPeriodSec] The number of seconds that your application takes to initialize on a VM instance. This is referred to as the [initialization period](/compute/docs/autoscaler#cool_down_period). Specifying an accurate initialization period improves autoscaler decisions. For example, when scaling out, the autoscaler ignores data from VMs that are still initializing because those VMs might not yet represent normal usage of your application. The default initialization period is 60 seconds. Initialization periods might vary because of numerous factors. We recommend that you test how long your application takes to initialize. To do this, create a VM and time your application's startup process.
  /// [cpuUtilization] Defines the CPU utilization policy that allows the autoscaler to scale based on the average CPU utilization of a managed instance group.
  /// [customMetricUtilizations] Configuration parameters of autoscaling based on a custom metric.
  /// [loadBalancingUtilization] Configuration parameters of autoscaling based on load balancer.
  /// [maxNumReplicas] The maximum number of instances that the autoscaler can scale out to. This is required when creating or updating an autoscaler. The maximum number of replicas must not be lower than minimal number of replicas.
  /// [minNumReplicas] The minimum number of replicas that the autoscaler can scale in to. This cannot be less than 0. If not provided, autoscaler chooses a default value depending on maximum number of instances allowed.
  /// [mode] Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
  /// [scaleDownControl] Required.
  /// [scaleInControl] Required.
  /// [scalingSchedules] Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler, and they can overlap. During overlapping periods the greatest min_required_replicas of all scaling schedules is applied. Up to 128 scaling schedules are allowed.
  AutoscalingPolicyResponseComputeBeta({
    required this.coolDownPeriodSec,
    required this.cpuUtilization,
    required this.customMetricUtilizations,
    required this.loadBalancingUtilization,
    required this.maxNumReplicas,
    required this.minNumReplicas,
    required this.mode,
    required this.scaleDownControl,
    required this.scaleInControl,
    required this.scalingSchedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coolDownPeriodSec': coolDownPeriodSec,
      'cpuUtilization':
          pulumi.Input.mapInputValue<
            AutoscalingPolicyCpuUtilizationResponseComputeBeta,
            Map<String, dynamic>
          >(cpuUtilization, (value) => value.toMap()),
      'customMetricUtilizations':
          pulumi.Input.mapInputValue<
            List<AutoscalingPolicyCustomMetricUtilizationResponseComputeBeta>,
            List<Map<String, dynamic>>
          >(
            customMetricUtilizations,
            (value) =>
                pulumi.Input.encodeList<
                  AutoscalingPolicyCustomMetricUtilizationResponseComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'loadBalancingUtilization':
          pulumi.Input.mapInputValue<
            AutoscalingPolicyLoadBalancingUtilizationResponseComputeBeta,
            Map<String, dynamic>
          >(loadBalancingUtilization, (value) => value.toMap()),
      'maxNumReplicas': maxNumReplicas,
      'minNumReplicas': minNumReplicas,
      'mode': mode,
      'scaleDownControl':
          pulumi.Input.mapInputValue<
            AutoscalingPolicyScaleDownControlResponseComputeBeta,
            Map<String, dynamic>
          >(scaleDownControl, (value) => value.toMap()),
      'scaleInControl':
          pulumi.Input.mapInputValue<
            AutoscalingPolicyScaleInControlResponseComputeBeta,
            Map<String, dynamic>
          >(scaleInControl, (value) => value.toMap()),
      'scalingSchedules': scalingSchedules,
    };
  }

  factory AutoscalingPolicyResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutoscalingPolicyResponseComputeBeta(
      coolDownPeriodSec: pulumi.Input.fromValue(
        map['coolDownPeriodSec'] as int,
      ),
      cpuUtilization: pulumi.Input.fromValue(
        AutoscalingPolicyCpuUtilizationResponseComputeBeta.fromMap(
          (map['cpuUtilization']! as Map).cast<String, dynamic>(),
        ),
      ),
      customMetricUtilizations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          AutoscalingPolicyCustomMetricUtilizationResponseComputeBeta
        >(
          map['customMetricUtilizations']!,
          (value) =>
              AutoscalingPolicyCustomMetricUtilizationResponseComputeBeta.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      loadBalancingUtilization: pulumi.Input.fromValue(
        AutoscalingPolicyLoadBalancingUtilizationResponseComputeBeta.fromMap(
          (map['loadBalancingUtilization']! as Map).cast<String, dynamic>(),
        ),
      ),
      maxNumReplicas: pulumi.Input.fromValue(map['maxNumReplicas'] as int),
      minNumReplicas: pulumi.Input.fromValue(map['minNumReplicas'] as int),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      scaleDownControl: pulumi.Input.fromValue(
        AutoscalingPolicyScaleDownControlResponseComputeBeta.fromMap(
          (map['scaleDownControl']! as Map).cast<String, dynamic>(),
        ),
      ),
      scaleInControl: pulumi.Input.fromValue(
        AutoscalingPolicyScaleInControlResponseComputeBeta.fromMap(
          (map['scaleInControl']! as Map).cast<String, dynamic>(),
        ),
      ),
      scalingSchedules: pulumi.Input.fromValue(
        (map['scalingSchedules'] as Map).cast<String, String>(),
      ),
    );
  }
}
