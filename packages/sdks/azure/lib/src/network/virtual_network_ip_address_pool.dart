// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkIpAddressPool {
  /// The list of IP address prefixes allocated to the Virtual Network.
  final pulumi.Input<List<String>>? allocatedIpAddressPrefixes;
  /// The ID of the Network Manager IP Address Management (IPAM) Pool.
  final pulumi.Input<String> id;
  /// The number of IP addresses to allocated to the Virtual Network. The value must be a string that represents a positive number, e.g., `"100"`.
  ///
  /// &gt; **Note:** `number_of_ip_addresses` cannot be decreased.
  final pulumi.Input<String> numberOfIpAddresses;

  /// Creates a new [VirtualNetworkIpAddressPool].
  /// [allocatedIpAddressPrefixes] The list of IP address prefixes allocated to the Virtual Network.
  /// [id] The ID of the Network Manager IP Address Management (IPAM) Pool.
  /// [numberOfIpAddresses] The number of IP addresses to allocated to the Virtual Network. The value must be a string that represents a positive number, e.g., `"100"`.
  const VirtualNetworkIpAddressPool({
    this.allocatedIpAddressPrefixes,
    required this.id,
    required this.numberOfIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpAddressPrefixes': ?allocatedIpAddressPrefixes,
      'id': id,
      'numberOfIpAddresses': numberOfIpAddresses,
    };
  }

  factory VirtualNetworkIpAddressPool.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkIpAddressPool(
      allocatedIpAddressPrefixes: (() { final guardedValue = map['allocatedIpAddressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      numberOfIpAddresses: pulumi.Input.fromValue(map['numberOfIpAddresses'] as String),
    );
  }
}

