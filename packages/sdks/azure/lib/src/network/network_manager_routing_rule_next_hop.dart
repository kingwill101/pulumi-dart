// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkManagerRoutingRuleNextHop {
  /// The address of the next hop. This is required if the next hop type is `VirtualAppliance`.
  final pulumi.Input<String>? address;
  /// The type of next hop. Possible values are `Internet`, `NoNextHop`, `VirtualAppliance`, `VirtualNetworkGateway` and `VnetLocal`.
  final pulumi.Input<String> type;

  /// Creates a new [NetworkManagerRoutingRuleNextHop].
  /// [address] The address of the next hop. This is required if the next hop type is `VirtualAppliance`.
  /// [type] The type of next hop. Possible values are `Internet`, `NoNextHop`, `VirtualAppliance`, `VirtualNetworkGateway` and `VnetLocal`.
  const NetworkManagerRoutingRuleNextHop({
    this.address,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'type': type,
    };
  }

  factory NetworkManagerRoutingRuleNextHop.fromMap(Map<String, dynamic> map) {
    return NetworkManagerRoutingRuleNextHop(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

