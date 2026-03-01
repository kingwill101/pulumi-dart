// ignore_for_file: unused_element, unnecessary_cast


class InterfacePublicIpv6Slaac {
  /// The assigned IPv4 address.
  final String? address;
  /// The subnet prefix length.
  final int? prefix;

  /// Creates a new [InterfacePublicIpv6Slaac].
  /// [address] The assigned IPv4 address.
  /// [prefix] The subnet prefix length.
  InterfacePublicIpv6Slaac({
    this.address,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'prefix': ?prefix,
    };
  }

  factory InterfacePublicIpv6Slaac.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv6Slaac(
      address: map['address'] == null ? null : map['address'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as int,
    );
  }
}

