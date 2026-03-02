// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_logical_network_subnet_ip_pool.dart';
import 'hci_logical_network_subnet_route.dart';

class HciLogicalNetworkSubnet {
  /// The address prefix in CIDR notation. Changing this forces a new resource to be created.
  final pulumi.Input<String>? addressPrefix;
  /// The IP address allocation method for the subnet. Possible values are `Dynamic` and `Static`. Changing this forces a new resource to be created.
  final pulumi.Input<String> ipAllocationMethod;
  /// One or more `ip_pool` block as defined above. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If `ip_pool` is not specified, it will be assigned by the server. If you experience a diff you may need to add this to `ignore_changes`.
  final pulumi.Input<List<HciLogicalNetworkSubnetIpPool>>? ipPools;
  /// A `route` block as defined above. Changing this forces a new resource to be created.
  final pulumi.Input<List<HciLogicalNetworkSubnetRoute>>? routes;
  /// The VLAN ID for the Logical Network. Changing this forces a new resource to be created.
  final pulumi.Input<int>? vlanId;

  /// Creates a new [HciLogicalNetworkSubnet].
  /// [addressPrefix] The address prefix in CIDR notation. Changing this forces a new resource to be created.
  /// [ipAllocationMethod] The IP address allocation method for the subnet. Possible values are `Dynamic` and `Static`. Changing this forces a new resource to be created.
  /// [ipPools] One or more `ip_pool` block as defined above. Changing this forces a new resource to be created.
  /// [routes] A `route` block as defined above. Changing this forces a new resource to be created.
  /// [vlanId] The VLAN ID for the Logical Network. Changing this forces a new resource to be created.
  HciLogicalNetworkSubnet({
    this.addressPrefix,
    required this.ipAllocationMethod,
    this.ipPools,
    this.routes,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'ipAllocationMethod': ipAllocationMethod,
      'ipPools': ?pulumi.Input.mapOptionalInputValue<List<HciLogicalNetworkSubnetIpPool>, List<Map<String, dynamic>>>(ipPools, (value) => pulumi.Input.encodeList<HciLogicalNetworkSubnetIpPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routes': ?pulumi.Input.mapOptionalInputValue<List<HciLogicalNetworkSubnetRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<HciLogicalNetworkSubnetRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vlanId': ?vlanId,
    };
  }

  factory HciLogicalNetworkSubnet.fromMap(Map<String, dynamic> map) {
    return HciLogicalNetworkSubnet(
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix']! as String).input(),
      ipAllocationMethod: (map['ipAllocationMethod'] as String).input(),
      ipPools: map['ipPools'] == null ? null : (pulumi.Input.decodeList<HciLogicalNetworkSubnetIpPool>(map['ipPools']!, (value) => HciLogicalNetworkSubnetIpPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<HciLogicalNetworkSubnetRoute>(map['routes']!, (value) => HciLogicalNetworkSubnetRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vlanId: map['vlanId'] == null ? null : (map['vlanId']! as int).input(),
    );
  }
}

