// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerPoolSetOverrides {
  /// The pool ID to use when all other pools are detected as unhealthy.
  final pulumi.Input<String?>? fallbackPool;
  /// The default weight for pools not listed in `poolWeights`. The declarative alternative to `random_steering.default_weight`; mutually exclusive with `randomSteering`.
  final pulumi.Input<double?>? poolDefaultWeight;
  /// A mapping of pool IDs to custom weights, relative to the other pools. The declarative alternative to `random_steering.pool_weights`; mutually exclusive with `randomSteering`.
  final pulumi.Input<Map<String, double>?>? poolWeights;
  /// A flat, ordered list of pool IDs to route the matched audience to. Replaces the resolved topology with exactly these pools. Mutually exclusive with `fixedResponse`.
  final pulumi.Input<List<String>?>? pools;
  /// Steering Policy for this load balancer.
  final pulumi.Input<String?>? steeringPolicy;

  /// Creates a new [LoadBalancerPoolSetOverrides].
  /// [fallbackPool] The pool ID to use when all other pools are detected as unhealthy.
  /// [poolDefaultWeight] The default weight for pools not listed in `poolWeights`. The declarative alternative to `random_steering.default_weight`; mutually exclusive with `randomSteering`.
  /// [poolWeights] A mapping of pool IDs to custom weights, relative to the other pools. The declarative alternative to `random_steering.pool_weights`; mutually exclusive with `randomSteering`.
  /// [pools] A flat, ordered list of pool IDs to route the matched audience to. Replaces the resolved topology with exactly these pools. Mutually exclusive with `fixedResponse`.
  /// [steeringPolicy] Steering Policy for this load balancer.
  const LoadBalancerPoolSetOverrides({
    this.fallbackPool,
    this.poolDefaultWeight,
    this.poolWeights,
    this.pools,
    this.steeringPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackPool': ?fallbackPool,
      'poolDefaultWeight': ?poolDefaultWeight,
      'poolWeights': ?poolWeights,
      'pools': ?pools,
      'steeringPolicy': ?steeringPolicy,
    };
  }

  factory LoadBalancerPoolSetOverrides.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPoolSetOverrides(
      fallbackPool: (() { final guardedValue = map['fallbackPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolDefaultWeight: (() { final guardedValue = map['poolDefaultWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      poolWeights: (() { final guardedValue = map['poolWeights']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, double>()); })(),
      pools: (() { final guardedValue = map['pools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      steeringPolicy: (() { final guardedValue = map['steeringPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
