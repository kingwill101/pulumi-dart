// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceInterfaceIpv4 {
  /// The public IP that will be used for the one-to-one NAT purpose. If this is `any`, the public IPv4 address assigned to this Linode is used on this interface and will be 1:1 NATted with the VPC IPv4 address.
  final pulumi.Input<String>? nat11;
  /// The IP from the VPC subnet to use for this interface. A random address will be assigned if this is not specified in a VPC interface.
  final pulumi.Input<String>? vpc;

  /// Creates a new [InstanceInterfaceIpv4].
  /// [nat11] The public IP that will be used for the one-to-one NAT purpose. If this is `any`, the public IPv4 address assigned to this Linode is used on this interface and will be 1:1 NATted with the VPC IPv4 address.
  /// [vpc] The IP from the VPC subnet to use for this interface. A random address will be assigned if this is not specified in a VPC interface.
  InstanceInterfaceIpv4({
    this.nat11,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nat11': ?nat11,
      'vpc': ?vpc,
    };
  }

  factory InstanceInterfaceIpv4.fromMap(Map<String, dynamic> map) {
    return InstanceInterfaceIpv4(
      nat11: map['nat11'] == null ? null : (map['nat11']! as String).input(),
      vpc: map['vpc'] == null ? null : (map['vpc']! as String).input(),
    );
  }
}

