// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_subnets_vpc_subnet_ipv6.dart';
import 'get_vpc_subnets_vpc_subnet_linode.dart';

class GetVpcSubnetsVpcSubnet {
  /// The date and time when the VPC Subnet was created.
  final pulumi.Input<String> created;
  /// ID of the interface.
  final pulumi.Input<int> id;
  /// The IPv4 range of this subnet in CIDR format.
  final pulumi.Input<String> ipv4;
  /// The IPv6 ranges of this subnet.
  final pulumi.Input<List<GetVpcSubnetsVpcSubnetIpv6>> ipv6s;
  /// The label of the VPC subnet.
  final pulumi.Input<String> label;
  /// A list of Linodes added to this subnet.
  final pulumi.Input<List<GetVpcSubnetsVpcSubnetLinode>> linodes;
  /// The date and time when the VPC Subnet was last updated.
  final pulumi.Input<String> updated;

  /// Creates a new [GetVpcSubnetsVpcSubnet].
  /// [created] The date and time when the VPC Subnet was created.
  /// [id] ID of the interface.
  /// [ipv4] The IPv4 range of this subnet in CIDR format.
  /// [ipv6s] The IPv6 ranges of this subnet.
  /// [label] The label of the VPC subnet.
  /// [linodes] A list of Linodes added to this subnet.
  /// [updated] The date and time when the VPC Subnet was last updated.
  const GetVpcSubnetsVpcSubnet({
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
      'ipv6s': pulumi.Input.mapInputValue<List<GetVpcSubnetsVpcSubnetIpv6>, List<Map<String, dynamic>>>(ipv6s, (value) => pulumi.Input.encodeList<GetVpcSubnetsVpcSubnetIpv6, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': label,
      'linodes': pulumi.Input.mapInputValue<List<GetVpcSubnetsVpcSubnetLinode>, List<Map<String, dynamic>>>(linodes, (value) => pulumi.Input.encodeList<GetVpcSubnetsVpcSubnetLinode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updated': updated,
    };
  }

  factory GetVpcSubnetsVpcSubnet.fromMap(Map<String, dynamic> map) {
    return GetVpcSubnetsVpcSubnet(
      created: pulumi.Input.fromValue(map['created'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      ipv4: pulumi.Input.fromValue(map['ipv4'] as String),
      ipv6s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpcSubnetsVpcSubnetIpv6>(map['ipv6s']!, (value) => GetVpcSubnetsVpcSubnetIpv6.fromMap((value as Map).cast<String, dynamic>()))),
      label: pulumi.Input.fromValue(map['label'] as String),
      linodes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpcSubnetsVpcSubnetLinode>(map['linodes']!, (value) => GetVpcSubnetsVpcSubnetLinode.fromMap((value as Map).cast<String, dynamic>()))),
      updated: pulumi.Input.fromValue(map['updated'] as String),
    );
  }
}

