// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubnetIpAddressPool {
  /// The list of IP address prefixes allocated to the subnet.
  final pulumi.Input<List<String>>? allocatedIpAddressPrefixes;
  /// The ID of the Network Manager IP Address Management (IPAM) Pool.
  final pulumi.Input<String> id;
  /// The number of IP addresses to allocated to the subnet. The value must be a string that represents a positive number, e.g., `"100"`.
  ///
  /// > **Note:** `number_of_ip_addresses` cannot be decreased.
  final pulumi.Input<String> numberOfIpAddresses;

  /// Creates a new [SubnetIpAddressPool].
  /// [allocatedIpAddressPrefixes] The list of IP address prefixes allocated to the subnet.
  /// [id] The ID of the Network Manager IP Address Management (IPAM) Pool.
  /// [numberOfIpAddresses] The number of IP addresses to allocated to the subnet. The value must be a string that represents a positive number, e.g., `"100"`.
  SubnetIpAddressPool({
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
      allocatedIpAddressPrefixes: map['allocatedIpAddressPrefixes'] == null ? null : ((map['allocatedIpAddressPrefixes']! as List).cast<String>()).input(),
      id: (map['id'] as String).input(),
      numberOfIpAddresses: (map['numberOfIpAddresses'] as String).input(),
    );
  }
}

