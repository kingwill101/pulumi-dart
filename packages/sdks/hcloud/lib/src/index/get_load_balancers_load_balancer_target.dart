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
  const GetLoadBalancersLoadBalancerTarget({
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
      serverId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['serverId'])),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
