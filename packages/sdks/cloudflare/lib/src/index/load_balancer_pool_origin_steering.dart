// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerPoolOriginSteering {
  /// The type of origin steering policy to use.
  final pulumi.Input<String?>? policy;

  /// Creates a new [LoadBalancerPoolOriginSteering].
  /// [policy] The type of origin steering policy to use.
  const LoadBalancerPoolOriginSteering({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory LoadBalancerPoolOriginSteering.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPoolOriginSteering(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
