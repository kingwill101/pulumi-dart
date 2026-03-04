// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HciLogicalNetworkSubnetIpPool {
  /// The IPv4 address of the end of the IP address pool. Changing this forces a new resource to be created.
  final pulumi.Input<String> end;

  /// The IPv4 address of the start of the IP address pool. Changing this forces a new resource to be created.
  final pulumi.Input<String> start;

  /// Creates a new [HciLogicalNetworkSubnetIpPool].
  /// [end] The IPv4 address of the end of the IP address pool. Changing this forces a new resource to be created.
  /// [start] The IPv4 address of the start of the IP address pool. Changing this forces a new resource to be created.
  HciLogicalNetworkSubnetIpPool({required this.end, required this.start});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': end, 'start': start};
  }

  factory HciLogicalNetworkSubnetIpPool.fromMap(Map<String, dynamic> map) {
    return HciLogicalNetworkSubnetIpPool(
      end: pulumi.Input.fromValue(map['end'] as String),
      start: pulumi.Input.fromValue(map['start'] as String),
    );
  }
}
