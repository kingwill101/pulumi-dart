// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersLoadBalancerTarget {
  final pulumi.Input<String> labelSelector;
  final pulumi.Input<int> serverId;
  final pulumi.Input<String> type;

  /// Creates a new [GetLoadBalancersLoadBalancerTarget].
  /// [labelSelector] Required.
  /// [serverId] Required.
  /// [type] Required.
  GetLoadBalancersLoadBalancerTarget({
    required this.labelSelector,
    required this.serverId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': labelSelector,
      'serverId': serverId,
      'type': type,
    };
  }

  factory GetLoadBalancersLoadBalancerTarget.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersLoadBalancerTarget(
      labelSelector: pulumi.Input.fromValue(map['labelSelector'] as String),
      serverId: pulumi.Input.fromValue(map['serverId'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

