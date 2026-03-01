// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersLoadBalancerAlgorithm {
  final String type;

  /// Creates a new [GetLoadBalancersLoadBalancerAlgorithm].
  /// [type] Required.
  GetLoadBalancersLoadBalancerAlgorithm({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetLoadBalancersLoadBalancerAlgorithm.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersLoadBalancerAlgorithm(
      type: map['type'] as String,
    );
  }
}

