// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration parameters of autoscaling based on load balancing.
class AutoscalingPolicyLoadBalancingUtilizationResponseComputeV1 {
  /// Fraction of backend capacity utilization (set in HTTP(S) load balancing configuration) that the autoscaler maintains. Must be a positive float value. If not defined, the default is 0.8.
  final pulumi.Input<double> utilizationTarget;

  /// Creates a new [AutoscalingPolicyLoadBalancingUtilizationResponseComputeV1].
  /// [utilizationTarget] Fraction of backend capacity utilization (set in HTTP(S) load balancing configuration) that the autoscaler maintains. Must be a positive float value. If not defined, the default is 0.8.
  const AutoscalingPolicyLoadBalancingUtilizationResponseComputeV1({
    required this.utilizationTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'utilizationTarget': utilizationTarget,
    };
  }

  factory AutoscalingPolicyLoadBalancingUtilizationResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyLoadBalancingUtilizationResponseComputeV1(
      utilizationTarget: pulumi.Input.fromValue(map['utilizationTarget'] as double),
    );
  }
}

