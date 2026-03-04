// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_subnet_ipv6.dart';
import 'get_vpc_subnet_linode.dart';

/// Result data returned by getVpcSubnet.
class GetVpcSubnetResult {
  /// The date and time when the VPC Subnet was created.
  final String created;

  /// ID of the interface.
  final String id;

  /// The IPv4 range of this subnet in CIDR format.
  final String ipv4;
  final List<GetVpcSubnetIpv6> ipv6s;

  /// The label of the VPC subnet.
  final String label;

  /// A list of Linodes added to this subnet.
  final List<GetVpcSubnetLinode> linodes;

  /// The date and time when the VPC Subnet was last updated.
  final String updated;
  final int vpcId;

  /// Creates a new [GetVpcSubnetResult].
  /// [created] The date and time when the VPC Subnet was created.
  /// [id] ID of the interface.
  /// [ipv4] The IPv4 range of this subnet in CIDR format.
  /// [ipv6s] Required.
  /// [label] The label of the VPC subnet.
  /// [linodes] A list of Linodes added to this subnet.
  /// [updated] The date and time when the VPC Subnet was last updated.
  /// [vpcId] Required.
  GetVpcSubnetResult({
    required this.created,
    required this.id,
    required this.ipv4,
    required this.ipv6s,
    required this.label,
    required this.linodes,
    required this.updated,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'id': id,
      'ipv4': ipv4,
      'ipv6s': pulumi.Input.encodeList<GetVpcSubnetIpv6, Map<String, dynamic>>(
        ipv6s,
        (value) => value.toMap(),
      ),
      'label': label,
      'linodes':
          pulumi.Input.encodeList<GetVpcSubnetLinode, Map<String, dynamic>>(
            linodes,
            (value) => value.toMap(),
          ),
      'updated': updated,
      'vpcId': vpcId,
    };
  }

  factory GetVpcSubnetResult.fromMap(Map<String, dynamic> map) {
    return GetVpcSubnetResult(
      created: map['created'] as String,
      id: map['id'] as String,
      ipv4: map['ipv4'] as String,
      ipv6s: pulumi.Input.decodeList<GetVpcSubnetIpv6>(
        map['ipv6s']!,
        (value) =>
            GetVpcSubnetIpv6.fromMap((value as Map).cast<String, dynamic>()),
      ),
      label: map['label'] as String,
      linodes: pulumi.Input.decodeList<GetVpcSubnetLinode>(
        map['linodes']!,
        (value) =>
            GetVpcSubnetLinode.fromMap((value as Map).cast<String, dynamic>()),
      ),
      updated: map['updated'] as String,
      vpcId: map['vpcId'] as int,
    );
  }
}
