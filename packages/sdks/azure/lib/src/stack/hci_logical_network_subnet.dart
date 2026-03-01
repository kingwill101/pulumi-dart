// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_logical_network_subnet_ip_pool.dart';
import 'hci_logical_network_subnet_route.dart';

class HciLogicalNetworkSubnet {
  /// The address prefix in CIDR notation. Changing this forces a new resource to be created.
  final String? addressPrefix;
  /// The IP address allocation method for the subnet. Possible values are `Dynamic` and `Static`. Changing this forces a new resource to be created.
  final String ipAllocationMethod;
  /// One or more `ip_pool` block as defined above. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If `ip_pool` is not specified, it will be assigned by the server. If you experience a diff you may need to add this to `ignore_changes`.
  final List<HciLogicalNetworkSubnetIpPool>? ipPools;
  /// A `route` block as defined above. Changing this forces a new resource to be created.
  final List<HciLogicalNetworkSubnetRoute>? routes;
  /// The VLAN ID for the Logical Network. Changing this forces a new resource to be created.
  final int? vlanId;

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
      'ipPools': ?ipPools == null ? null : pulumi.Input.encodeList<HciLogicalNetworkSubnetIpPool, Map<String, dynamic>>(ipPools!, (value) => value.toMap()),
      'routes': ?routes == null ? null : pulumi.Input.encodeList<HciLogicalNetworkSubnetRoute, Map<String, dynamic>>(routes!, (value) => value.toMap()),
      'vlanId': ?vlanId,
    };
  }

  factory HciLogicalNetworkSubnet.fromMap(Map<String, dynamic> map) {
    return HciLogicalNetworkSubnet(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      ipAllocationMethod: map['ipAllocationMethod'] as String,
      ipPools: map['ipPools'] == null ? null : pulumi.Input.decodeList<HciLogicalNetworkSubnetIpPool>(map['ipPools'], (value) => HciLogicalNetworkSubnetIpPool.fromMap((value as Map).cast<String, dynamic>())),
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<HciLogicalNetworkSubnetRoute>(map['routes'], (value) => HciLogicalNetworkSubnetRoute.fromMap((value as Map).cast<String, dynamic>())),
      vlanId: map['vlanId'] == null ? null : map['vlanId'] as int,
    );
  }
}

