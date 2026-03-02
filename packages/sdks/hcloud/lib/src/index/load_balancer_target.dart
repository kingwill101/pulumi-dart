// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerTarget {
  final pulumi.Input<int>? serverId;
  /// (string) Type of the Load Balancer Algorithm. `round_robin` or `least_connections`
  final pulumi.Input<String> type;
  final pulumi.Input<bool>? usePrivateIp;

  /// Creates a new [LoadBalancerTarget].
  /// [serverId] Optional.
  /// [type] (string) Type of the Load Balancer Algorithm. `round_robin` or `least_connections`
  /// [usePrivateIp] Optional.
  LoadBalancerTarget({
    this.serverId,
    required this.type,
    this.usePrivateIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverId': ?serverId,
      'type': type,
      'usePrivateIp': ?usePrivateIp,
    };
  }

  factory LoadBalancerTarget.fromMap(Map<String, dynamic> map) {
    return LoadBalancerTarget(
      serverId: map['serverId'] == null ? null : (map['serverId'] as int).input(),
      type: (map['type'] as String).input(),
      usePrivateIp: map['usePrivateIp'] == null ? null : (map['usePrivateIp'] as bool).input(),
    );
  }
}

