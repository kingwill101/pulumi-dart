// ignore_for_file: unused_element, unnecessary_cast

import 'interface_vpc_ipv4.dart';
import 'interface_vpc_ipv6.dart';

class InterfaceVpc {
  /// IPv4 configuration for the VPC interface.
  final InterfaceVpcIpv4? ipv4;
  /// IPv6 assigned through `slaac` and `ranges`. If you create a VPC interface in a subnet with IPv6 and don’t specify `slaac` or `ranges`, a SLAAC range is added automatically. **NOTE: IPv6 VPCs may not currently be available to all users.**
  final InterfaceVpcIpv6? ipv6;
  /// The VPC subnet identifier for this interface.
  final int subnetId;

  /// Creates a new [InterfaceVpc].
  /// [ipv4] IPv4 configuration for the VPC interface.
  /// [ipv6] IPv6 assigned through `slaac` and `ranges`. If you create a VPC interface in a subnet with IPv6 and don’t specify `slaac` or `ranges`, a SLAAC range is added automatically. **NOTE: IPv6 VPCs may not currently be available to all users.**
  /// [subnetId] The VPC subnet identifier for this interface.
  InterfaceVpc({
    this.ipv4,
    this.ipv6,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ?ipv4 == null ? null : ipv4!.toMap(),
      'ipv6': ?ipv6 == null ? null : ipv6!.toMap(),
      'subnetId': subnetId,
    };
  }

  factory InterfaceVpc.fromMap(Map<String, dynamic> map) {
    return InterfaceVpc(
      ipv4: map['ipv4'] == null ? null : InterfaceVpcIpv4.fromMap((map['ipv4'] as Map).cast<String, dynamic>()),
      ipv6: map['ipv6'] == null ? null : InterfaceVpcIpv6.fromMap((map['ipv6'] as Map).cast<String, dynamic>()),
      subnetId: map['subnetId'] as int,
    );
  }
}

