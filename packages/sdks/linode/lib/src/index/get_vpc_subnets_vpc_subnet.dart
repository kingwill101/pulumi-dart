// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_subnets_vpc_subnet_ipv6.dart';
import 'get_vpc_subnets_vpc_subnet_linode.dart';

class GetVpcSubnetsVpcSubnet {
  /// The date and time when the VPC Subnet was created.
  final String created;
  /// ID of the interface.
  final int id;
  /// The IPv4 range of this subnet in CIDR format.
  final String ipv4;
  /// The IPv6 ranges of this subnet.
  final List<GetVpcSubnetsVpcSubnetIpv6> ipv6s;
  /// The label of the VPC subnet.
  final String label;
  /// A list of Linodes added to this subnet.
  final List<GetVpcSubnetsVpcSubnetLinode> linodes;
  /// The date and time when the VPC Subnet was last updated.
  final String updated;

  /// Creates a new [GetVpcSubnetsVpcSubnet].
  /// [created] The date and time when the VPC Subnet was created.
  /// [id] ID of the interface.
  /// [ipv4] The IPv4 range of this subnet in CIDR format.
  /// [ipv6s] The IPv6 ranges of this subnet.
  /// [label] The label of the VPC subnet.
  /// [linodes] A list of Linodes added to this subnet.
  /// [updated] The date and time when the VPC Subnet was last updated.
  GetVpcSubnetsVpcSubnet({
    required this.created,
    required this.id,
    required this.ipv4,
    required this.ipv6s,
    required this.label,
    required this.linodes,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'id': id,
      'ipv4': ipv4,
      'ipv6s': pulumi.Input.encodeList<GetVpcSubnetsVpcSubnetIpv6, Map<String, dynamic>>(ipv6s, (value) => value.toMap()),
      'label': label,
      'linodes': pulumi.Input.encodeList<GetVpcSubnetsVpcSubnetLinode, Map<String, dynamic>>(linodes, (value) => value.toMap()),
      'updated': updated,
    };
  }

  factory GetVpcSubnetsVpcSubnet.fromMap(Map<String, dynamic> map) {
    return GetVpcSubnetsVpcSubnet(
      created: map['created'] as String,
      id: map['id'] as int,
      ipv4: map['ipv4'] as String,
      ipv6s: pulumi.Input.decodeList<GetVpcSubnetsVpcSubnetIpv6>(map['ipv6s'], (value) => GetVpcSubnetsVpcSubnetIpv6.fromMap((value as Map).cast<String, dynamic>())),
      label: map['label'] as String,
      linodes: pulumi.Input.decodeList<GetVpcSubnetsVpcSubnetLinode>(map['linodes'], (value) => GetVpcSubnetsVpcSubnetLinode.fromMap((value as Map).cast<String, dynamic>())),
      updated: map['updated'] as String,
    );
  }
}

