// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerAlgorithm {
  /// Type of the Load Balancer Algorithm. `round_robin` or `least_connections`
  final String? type;

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
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

