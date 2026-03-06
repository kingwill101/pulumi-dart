// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceConfigInterfaceIpv4 {
  /// The public IP that will be used for the one-to-one NAT purpose. If this is `any`, the public IPv4 address assigned to this Linode is used on this interface and will be 1:1 NATted with the VPC IPv4 address.
  final pulumi.Input<String> nat11;
  /// The IP from the VPC subnet to use for this interface. A random address will be assigned if this is not specified in a VPC interface.
  final pulumi.Input<String> vpc;

  /// Creates a new [GetInstancesInstanceConfigInterfaceIpv4].
  /// [nat11] The public IP that will be used for the one-to-one NAT purpose. If this is `any`, the public IPv4 address assigned to this Linode is used on this interface and will be 1:1 NATted with the VPC IPv4 address.
  /// [vpc] The IP from the VPC subnet to use for this interface. A random address will be assigned if this is not specified in a VPC interface.
  const GetInstancesInstanceConfigInterfaceIpv4({
    required this.nat11,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nat11': nat11,
      'vpc': vpc,
    };
  }

  factory GetInstancesInstanceConfigInterfaceIpv4.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceConfigInterfaceIpv4(
      nat11: pulumi.Input.fromValue(map['nat11'] as String),
      vpc: pulumi.Input.fromValue(map['vpc'] as String),
    );
  }
}

