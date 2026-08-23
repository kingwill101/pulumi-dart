// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubnetIpAddressPool {
  /// The list of IP address prefixes allocated to the subnet.
  final pulumi.Input<List<String>>? allocatedIpAddressPrefixes;
  /// The ID of the Network Manager IP Address Management (IPAM) Pool.
  final pulumi.Input<String> id;
  /// The number of IP addresses to allocated to the subnet. The value must be a string that represents a positive number, e.g., `"100"`.
  ///
  /// &gt; **Note:** `numberOfIpAddresses` cannot be decreased.
  final pulumi.Input<String> numberOfIpAddresses;

  /// Creates a new [SubnetIpAddressPool].
  /// [allocatedIpAddressPrefixes] The list of IP address prefixes allocated to the subnet.
  /// [id] The ID of the Network Manager IP Address Management (IPAM) Pool.
  /// [numberOfIpAddresses] The number of IP addresses to allocated to the subnet. The value must be a string that represents a positive number, e.g., `"100"`.
  const SubnetIpAddressPool({
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

  factory SubnetIpAddressPool.fromMap(Map<String, dynamic> map) {
    return SubnetIpAddressPool(
      allocatedIpAddressPrefixes: (() { final guardedValue = map['allocatedIpAddressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      numberOfIpAddresses: pulumi.Input.fromValue(map['numberOfIpAddresses'] as String),
    );
  }
}
