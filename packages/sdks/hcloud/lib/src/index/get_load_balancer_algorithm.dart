// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerAlgorithm {
  /// (string) Type of the target. `server` or `label_selector`
  final pulumi.Input<String> type;

  /// Creates a new [GetLoadBalancerAlgorithm].
  /// [type] (string) Type of the target. `server` or `label_selector`
  GetLoadBalancerAlgorithm({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetLoadBalancerAlgorithm.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerAlgorithm(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

