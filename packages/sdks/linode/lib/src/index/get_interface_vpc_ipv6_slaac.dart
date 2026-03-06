// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInterfaceVpcIpv6Slaac {
  /// The assigned IPv6 address within the range.
  final pulumi.Input<String> address;
  /// The IPv6 network range in CIDR notation.
  final pulumi.Input<String> range;

  /// Creates a new [GetInterfaceVpcIpv6Slaac].
  /// [address] The assigned IPv6 address within the range.
  /// [range] The IPv6 network range in CIDR notation.
  const GetInterfaceVpcIpv6Slaac({
    required this.address,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'range': range,
    };
  }

  factory GetInterfaceVpcIpv6Slaac.fromMap(Map<String, dynamic> map) {
    return GetInterfaceVpcIpv6Slaac(
      address: pulumi.Input.fromValue(map['address'] as String),
      range: pulumi.Input.fromValue(map['range'] as String),
    );
  }
}

