// ignore_for_file: unused_element, unnecessary_cast


class NetworkManagerRoutingRuleNextHop {
  /// The address of the next hop. This is required if the next hop type is `VirtualAppliance`.
  final String? address;
  /// The type of next hop. Possible values are `Internet`, `NoNextHop`, `VirtualAppliance`, `VirtualNetworkGateway` and `VnetLocal`.
  final String type;

  /// Creates a new [NetworkManagerRoutingRuleNextHop].
  /// [address] The address of the next hop. This is required if the next hop type is `VirtualAppliance`.
  /// [type] The type of next hop. Possible values are `Internet`, `NoNextHop`, `VirtualAppliance`, `VirtualNetworkGateway` and `VnetLocal`.
  NetworkManagerRoutingRuleNextHop({
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
      address: map['address'] == null ? null : map['address'] as String,
      type: map['type'] as String,
    );
  }
}

