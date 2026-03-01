// ignore_for_file: unused_element, unnecessary_cast


class GetVpcSubnetIpv6 {
  /// An IPv6 range allocated to this subnet.
  final String range;

  /// Creates a new [GetVpcSubnetIpv6].
  /// [range] An IPv6 range allocated to this subnet.
  GetVpcSubnetIpv6({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
    };
  }

  factory GetVpcSubnetIpv6.fromMap(Map<String, dynamic> map) {
    return GetVpcSubnetIpv6(
      range: map['range'] as String,
    );
  }
}

