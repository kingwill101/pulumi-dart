// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_interface_vpc_ipv4_address.dart';
import 'get_interface_vpc_ipv4_range.dart';

class GetInterfaceVpcIpv4 {
  /// IPv4 addresses assigned to this VPC interface.
  final List<GetInterfaceVpcIpv4Address> addresses;
  /// IPv4 ranges assigned to this VPC interface.
  final List<GetInterfaceVpcIpv4Range> ranges;

  /// Creates a new [GetInterfaceVpcIpv4].
  /// [addresses] IPv4 addresses assigned to this VPC interface.
  /// [ranges] IPv4 ranges assigned to this VPC interface.
  GetInterfaceVpcIpv4({
    required this.addresses,
    required this.ranges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': pulumi.Input.encodeList<GetInterfaceVpcIpv4Address, Map<String, dynamic>>(addresses, (value) => value.toMap()),
      'ranges': pulumi.Input.encodeList<GetInterfaceVpcIpv4Range, Map<String, dynamic>>(ranges, (value) => value.toMap()),
    };
  }

  factory GetInterfaceVpcIpv4.fromMap(Map<String, dynamic> map) {
    return GetInterfaceVpcIpv4(
      addresses: pulumi.Input.decodeList<GetInterfaceVpcIpv4Address>(map['addresses'], (value) => GetInterfaceVpcIpv4Address.fromMap((value as Map).cast<String, dynamic>())),
      ranges: pulumi.Input.decodeList<GetInterfaceVpcIpv4Range>(map['ranges'], (value) => GetInterfaceVpcIpv4Range.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

