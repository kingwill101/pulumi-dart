// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerPoolsResultOriginSteering {
  /// The type of origin steering policy to use.
  final pulumi.Input<String> policy;

  /// Creates a new [GetLoadBalancerPoolsResultOriginSteering].
  /// [policy] The type of origin steering policy to use.
  const GetLoadBalancerPoolsResultOriginSteering({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
    };
  }

  factory GetLoadBalancerPoolsResultOriginSteering.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolsResultOriginSteering(
      policy: pulumi.Input.fromValue(map['policy'] as String),
    );
  }
}
