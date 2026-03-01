// ignore_for_file: unused_element, unnecessary_cast


class InterfaceVpcIpv4Address {
  /// The IPv4 address. Defaults to "auto" for automatic assignment.
  final String? address;
  /// The 1:1 NAT IPv4 address used to associate a public IPv4 address with the interface's VPC subnet IPv4 address.
  final String? nat11Address;
  /// Whether this address is the primary address for the interface.
  final bool? primary;

  /// Creates a new [InterfaceVpcIpv4Address].
  /// [address] The IPv4 address. Defaults to "auto" for automatic assignment.
  /// [nat11Address] The 1:1 NAT IPv4 address used to associate a public IPv4 address with the interface's VPC subnet IPv4 address.
  /// [primary] Whether this address is the primary address for the interface.
  InterfaceVpcIpv4Address({
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

  factory InterfaceVpcIpv4Address.fromMap(Map<String, dynamic> map) {
    return InterfaceVpcIpv4Address(
      address: map['address'] == null ? null : map['address'] as String,
      nat11Address: map['nat11Address'] == null ? null : map['nat11Address'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
    );
  }
}

