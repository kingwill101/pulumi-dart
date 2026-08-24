// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersResultRuleOverridesRandomSteering {
  /// The default weight for pools in the load balancer that are not specified in the poolWeights map.
  final pulumi.Input<double> defaultWeight;
  /// A mapping of pool IDs to custom weights. The weight is relative to other pools in the load balancer.
  final pulumi.Input<Map<String, double>> poolWeights;

  /// Creates a new [GetLoadBalancersResultRuleOverridesRandomSteering].
  /// [defaultWeight] The default weight for pools in the load balancer that are not specified in the poolWeights map.
  /// [poolWeights] A mapping of pool IDs to custom weights. The weight is relative to other pools in the load balancer.
  const GetLoadBalancersResultRuleOverridesRandomSteering({
    required this.defaultWeight,
    required this.poolWeights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultWeight': defaultWeight,
      'poolWeights': poolWeights,
    };
  }

  factory GetLoadBalancersResultRuleOverridesRandomSteering.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersResultRuleOverridesRandomSteering(
      defaultWeight: pulumi.Input.fromValue((map['defaultWeight'] as num).toDouble()),
      poolWeights: pulumi.Input.fromValue((map['poolWeights'] as Map).cast<String, double>()),
    );
  }
}
