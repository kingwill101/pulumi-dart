// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerTarget {
  final pulumi.Input<int>? serverId;
  /// (string) Type of the Load Balancer Algorithm. `roundRobin` or `leastConnections`
  final pulumi.Input<String> type;
  final pulumi.Input<bool>? usePrivateIp;

  /// Creates a new [LoadBalancerTarget].
  /// [serverId] Optional.
  /// [type] (string) Type of the Load Balancer Algorithm. `roundRobin` or `leastConnections`
  /// [usePrivateIp] Optional.
  const LoadBalancerTarget({
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
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      usePrivateIp: (() { final guardedValue = map['usePrivateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
