// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization {
  /// Fraction of backend capacity utilization (set in HTTP(s) load
  /// balancing configuration) that autoscaler should maintain. Must
  /// be a positive float value. If not defined, the default is 0.8.
  final pulumi.Input<double> target;

  /// Creates a new [RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization].
  /// [target] Fraction of backend capacity utilization (set in HTTP(s) load
  const RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization({
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': target,
    };
  }

  factory RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization.fromMap(Map<String, dynamic> map) {
    return RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization(
      target: pulumi.Input.fromValue((map['target'] as num).toDouble()),
    );
  }
}
