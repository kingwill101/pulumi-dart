// ignore_for_file: unused_element, unnecessary_cast

import 'get_interface_vpc_ipv4.dart';
import 'get_interface_vpc_ipv6.dart';

class GetInterfaceVpc {
  /// The IPv4 configuration for the VPC interface.
  final GetInterfaceVpcIpv4 ipv4;
  /// The IPv6 configuration for the VPC interface.
  final GetInterfaceVpcIpv6 ipv6;
  /// The ID of the VPC subnet.
  final int subnetId;

  /// Creates a new [GetInterfaceVpc].
  /// [ipv4] The IPv4 configuration for the VPC interface.
  /// [ipv6] The IPv6 configuration for the VPC interface.
  /// [subnetId] The ID of the VPC subnet.
  GetInterfaceVpc({
    required this.ipv4,
    required this.ipv6,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ipv4.toMap(),
      'ipv6': ipv6.toMap(),
      'subnetId': subnetId,
    };
  }

  factory GetInterfaceVpc.fromMap(Map<String, dynamic> map) {
    return GetInterfaceVpc(
      ipv4: GetInterfaceVpcIpv4.fromMap((map['ipv4'] as Map).cast<String, dynamic>()),
      ipv6: GetInterfaceVpcIpv6.fromMap((map['ipv6'] as Map).cast<String, dynamic>()),
      subnetId: map['subnetId'] as int,
    );
  }
}

