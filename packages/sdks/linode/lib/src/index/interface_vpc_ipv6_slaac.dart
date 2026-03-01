// ignore_for_file: unused_element, unnecessary_cast


class InterfaceVpcIpv6Slaac {
  /// The IPv6 network range in CIDR notation.
  final String? range;

  /// Creates a new [InterfaceVpcIpv6Slaac].
  /// [range] The IPv6 network range in CIDR notation.
  InterfaceVpcIpv6Slaac({
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': ?range,
    };
  }

  factory InterfaceVpcIpv6Slaac.fromMap(Map<String, dynamic> map) {
    return InterfaceVpcIpv6Slaac(
      range: map['range'] == null ? null : map['range'] as String,
    );
  }
}

