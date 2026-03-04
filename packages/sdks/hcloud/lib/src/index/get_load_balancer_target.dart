// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerTarget {
  /// (string) Label Selector to add a group of resources based on the label.
  final pulumi.Input<String> labelSelector;

  /// (int) ID of the server which should be a target for this Load Balancer.
  final pulumi.Input<int> serverId;

  /// (string) Type of the target. `server` or `label_selector`
  final pulumi.Input<String> type;

  /// Creates a new [GetLoadBalancerTarget].
  /// [labelSelector] (string) Label Selector to add a group of resources based on the label.
  /// [serverId] (int) ID of the server which should be a target for this Load Balancer.
  /// [type] (string) Type of the target. `server` or `label_selector`
  GetLoadBalancerTarget({
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

  factory GetLoadBalancerTarget.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerTarget(
      labelSelector: pulumi.Input.fromValue(map['labelSelector'] as String),
      serverId: pulumi.Input.fromValue(map['serverId'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
