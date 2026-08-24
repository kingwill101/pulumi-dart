// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerPoolOriginSteering {
  /// The type of origin steering policy to use.
  final pulumi.Input<String> policy;

  /// Creates a new [GetLoadBalancerPoolOriginSteering].
  /// [policy] The type of origin steering policy to use.
  const GetLoadBalancerPoolOriginSteering({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
    };
  }

  factory GetLoadBalancerPoolOriginSteering.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolOriginSteering(
      policy: pulumi.Input.fromValue(map['policy'] as String),
    );
  }
}
