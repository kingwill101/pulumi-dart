// ignore_for_file: unused_element, unnecessary_cast


class GetInterfaceVpcIpv6Range {
  /// The IPv6 network range in CIDR notation.
  final String range;

  /// Creates a new [GetInterfaceVpcIpv6Range].
  /// [range] The IPv6 network range in CIDR notation.
  GetInterfaceVpcIpv6Range({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
    };
  }

  factory GetInterfaceVpcIpv6Range.fromMap(Map<String, dynamic> map) {
    return GetInterfaceVpcIpv6Range(
      range: map['range'] as String,
    );
  }
}

