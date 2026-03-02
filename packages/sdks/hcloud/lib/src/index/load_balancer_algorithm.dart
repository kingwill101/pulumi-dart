// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerAlgorithm {
  /// Type of the Load Balancer Algorithm. `round_robin` or `least_connections`
  final pulumi.Input<String>? type;

  /// Creates a new [LoadBalancerAlgorithm].
  /// [type] Type of the Load Balancer Algorithm. `round_robin` or `least_connections`
  LoadBalancerAlgorithm({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory LoadBalancerAlgorithm.fromMap(Map<String, dynamic> map) {
    return LoadBalancerAlgorithm(
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

