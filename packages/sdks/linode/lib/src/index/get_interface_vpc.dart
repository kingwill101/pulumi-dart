// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_interface_vpc_ipv4.dart';
import 'get_interface_vpc_ipv6.dart';

class GetInterfaceVpc {
  /// The IPv4 configuration for the VPC interface.
  final pulumi.Input<GetInterfaceVpcIpv4> ipv4;
  /// The IPv6 configuration for the VPC interface.
  final pulumi.Input<GetInterfaceVpcIpv6> ipv6;
  /// The ID of the VPC subnet.
  final pulumi.Input<int> subnetId;

  /// Creates a new [GetInterfaceVpc].
  /// [ipv4] The IPv4 configuration for the VPC interface.
  /// [ipv6] The IPv6 configuration for the VPC interface.
  /// [subnetId] The ID of the VPC subnet.
  const GetInterfaceVpc({
    required this.ipv4,
    required this.ipv6,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': pulumi.Input.mapInputValue<GetInterfaceVpcIpv4, Map<String, dynamic>>(ipv4, (value) => value.toMap()),
      'ipv6': pulumi.Input.mapInputValue<GetInterfaceVpcIpv6, Map<String, dynamic>>(ipv6, (value) => value.toMap()),
      'subnetId': subnetId,
    };
  }

  factory GetInterfaceVpc.fromMap(Map<String, dynamic> map) {
    return GetInterfaceVpc(
      ipv4: pulumi.Input.fromValue(GetInterfaceVpcIpv4.fromMap((map['ipv4']! as Map).cast<String, dynamic>())),
      ipv6: pulumi.Input.fromValue(GetInterfaceVpcIpv6.fromMap((map['ipv6']! as Map).cast<String, dynamic>())),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as int),
    );
  }
}

