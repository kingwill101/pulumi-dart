// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInterfaceVpcIpv4Address {
  /// The VPC IPv4 address.
  final pulumi.Input<String> address;
  /// The 1:1 NAT address for this VPC IPv4 address.
  final pulumi.Input<String> nat11Address;
  /// Whether this is the primary VPC IPv4 address.
  final pulumi.Input<bool> primary;

  /// Creates a new [GetInterfaceVpcIpv4Address].
  /// [address] The VPC IPv4 address.
  /// [nat11Address] The 1:1 NAT address for this VPC IPv4 address.
  /// [primary] Whether this is the primary VPC IPv4 address.
  GetInterfaceVpcIpv4Address({
    required this.address,
    required this.nat11Address,
    required this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'nat11Address': nat11Address,
      'primary': primary,
    };
  }

  factory GetInterfaceVpcIpv4Address.fromMap(Map<String, dynamic> map) {
    return GetInterfaceVpcIpv4Address(
      address: pulumi.Input.fromValue(map['address'] as String),
      nat11Address: pulumi.Input.fromValue(map['nat11Address'] as String),
      primary: pulumi.Input.fromValue(map['primary'] as bool),
    );
  }
}

