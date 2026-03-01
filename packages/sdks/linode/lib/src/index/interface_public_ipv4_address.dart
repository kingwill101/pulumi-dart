// ignore_for_file: unused_element, unnecessary_cast


class InterfacePublicIpv4Address {
  /// The IPv4 address. Defaults to "auto" for automatic assignment.
  final String? address;
  /// Whether this address is the primary address for the interface.
  final bool? primary;

  /// Creates a new [InterfacePublicIpv4Address].
  /// [address] The IPv4 address. Defaults to "auto" for automatic assignment.
  /// [primary] Whether this address is the primary address for the interface.
  InterfacePublicIpv4Address({
    this.address,
    this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'primary': ?primary,
    };
  }

  factory InterfacePublicIpv4Address.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv4Address(
      address: map['address'] == null ? null : map['address'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
    );
  }
}

