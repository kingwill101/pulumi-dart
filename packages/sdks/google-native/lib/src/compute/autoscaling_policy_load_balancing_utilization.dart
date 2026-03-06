// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration parameters of autoscaling based on load balancing.
class AutoscalingPolicyLoadBalancingUtilization {
  /// Fraction of backend capacity utilization (set in HTTP(S) load balancing configuration) that the autoscaler maintains. Must be a positive float value. If not defined, the default is 0.8.
  final pulumi.Input<double>? utilizationTarget;

  /// Creates a new [AutoscalingPolicyLoadBalancingUtilization].
  /// [utilizationTarget] Fraction of backend capacity utilization (set in HTTP(S) load balancing configuration) that the autoscaler maintains. Must be a positive float value. If not defined, the default is 0.8.
  const AutoscalingPolicyLoadBalancingUtilization({
    this.utilizationTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'utilizationTarget': ?utilizationTarget,
    };
  }

  factory AutoscalingPolicyLoadBalancingUtilization.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyLoadBalancingUtilization(
      utilizationTarget: (() { final guardedValue = map['utilizationTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

