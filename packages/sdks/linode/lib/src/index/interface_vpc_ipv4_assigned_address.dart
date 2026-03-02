// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterfaceVpcIpv4AssignedAddress {
  /// The assigned IPv4 address.
  final pulumi.Input<String>? address;
  /// The assigned 1:1 NAT IPv4 address used to associate a public IPv4 address with the interface's VPC subnet IPv4 address.
  final pulumi.Input<String>? nat11Address;
  /// Whether this address is the primary address for the interface.
  final pulumi.Input<bool>? primary;

  /// Creates a new [InterfaceVpcIpv4AssignedAddress].
  /// [address] The assigned IPv4 address.
  /// [nat11Address] The assigned 1:1 NAT IPv4 address used to associate a public IPv4 address with the interface's VPC subnet IPv4 address.
  /// [primary] Whether this address is the primary address for the interface.
  InterfaceVpcIpv4AssignedAddress({
    this.address,
    this.nat11Address,
    this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'nat11Address': ?nat11Address,
      'primary': ?primary,
    };
  }

  factory InterfaceVpcIpv4AssignedAddress.fromMap(Map<String, dynamic> map) {
    return InterfaceVpcIpv4AssignedAddress(
      address: map['address'] == null ? null : (map['address']! as String).input(),
      nat11Address: map['nat11Address'] == null ? null : (map['nat11Address']! as String).input(),
      primary: map['primary'] == null ? null : (map['primary']! as bool).input(),
    );
  }
}

