// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerRuleOverridesRandomSteering {
  /// The default weight for pools in the load balancer that are not specified in the poolWeights map.
  final pulumi.Input<double?>? defaultWeight;
  /// A mapping of pool IDs to custom weights. The weight is relative to other pools in the load balancer.
  final pulumi.Input<Map<String, double>?>? poolWeights;

  /// Creates a new [LoadBalancerRuleOverridesRandomSteering].
  /// [defaultWeight] The default weight for pools in the load balancer that are not specified in the poolWeights map.
  /// [poolWeights] A mapping of pool IDs to custom weights. The weight is relative to other pools in the load balancer.
  const LoadBalancerRuleOverridesRandomSteering({
    this.defaultWeight,
    this.poolWeights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultWeight': ?defaultWeight,
      'poolWeights': ?poolWeights,
    };
  }

  factory LoadBalancerRuleOverridesRandomSteering.fromMap(Map<String, dynamic> map) {
    return LoadBalancerRuleOverridesRandomSteering(
      defaultWeight: (() { final guardedValue = map['defaultWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      poolWeights: (() { final guardedValue = map['poolWeights']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, double>()); })(),
    );
  }
}
