// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerAlgorithm {
  /// Type of the Load Balancer Algorithm. `roundRobin` or `leastConnections`
  final pulumi.Input<String>? type;

  /// Creates a new [LoadBalancerAlgorithm].
  /// [type] Type of the Load Balancer Algorithm. `roundRobin` or `leastConnections`
  const LoadBalancerAlgorithm({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory LoadBalancerAlgorithm.fromMap(Map<String, dynamic> map) {
    return LoadBalancerAlgorithm(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
