// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersLoadBalancerAlgorithm {
  final pulumi.Input<String> type;

  /// Creates a new [GetLoadBalancersLoadBalancerAlgorithm].
  /// [type] Required.
  const GetLoadBalancersLoadBalancerAlgorithm({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetLoadBalancersLoadBalancerAlgorithm.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersLoadBalancerAlgorithm(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

