// ignore_for_file: unused_element, unnecessary_cast


class InterfaceVpcIpv6AssignedSlaac {
  /// The assigned IPv4 address.
  final String? address;
  /// The IPv6 network range in CIDR notation.
  final String? range;

  /// Creates a new [InterfaceVpcIpv6AssignedSlaac].
  /// [address] The assigned IPv4 address.
  /// [range] The IPv6 network range in CIDR notation.
  InterfaceVpcIpv6AssignedSlaac({
    this.address,
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'range': ?range,
    };
  }

  factory InterfaceVpcIpv6AssignedSlaac.fromMap(Map<String, dynamic> map) {
    return InterfaceVpcIpv6AssignedSlaac(
      address: map['address'] == null ? null : map['address'] as String,
      range: map['range'] == null ? null : map['range'] as String,
    );
  }
}

