// ignore_for_file: unused_element, unnecessary_cast


class InterfaceVpcIpv6Range {
  /// The IPv6 network range in CIDR notation.
  final String? range;

  /// Creates a new [InterfaceVpcIpv6Range].
  /// [range] The IPv6 network range in CIDR notation.
  InterfaceVpcIpv6Range({
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': ?range,
    };
  }

  factory InterfaceVpcIpv6Range.fromMap(Map<String, dynamic> map) {
    return InterfaceVpcIpv6Range(
      range: map['range'] == null ? null : map['range'] as String,
    );
  }
}

