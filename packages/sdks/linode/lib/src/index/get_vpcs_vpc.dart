// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpcs_vpc_ipv6.dart';

class GetVpcsVpc {
  /// The date and time when the VPC was created.
  final pulumi.Input<String> created;
  /// The user-defined description of this VPC.
  final pulumi.Input<String> description;
  /// The unique id of this VPC.
  final pulumi.Input<String> id;
  /// A list of IPv6 allocations under this VPC.
  final pulumi.Input<List<GetVpcsVpcIpv6>> ipv6s;
  /// The label of the VPC.
  final pulumi.Input<String> label;
  /// The region where the VPC is deployed.
  final pulumi.Input<String> region;
  /// The date and time when the VPC was last updated.
  final pulumi.Input<String> updated;

  /// Creates a new [GetVpcsVpc].
  /// [created] The date and time when the VPC was created.
  /// [description] The user-defined description of this VPC.
  /// [id] The unique id of this VPC.
  /// [ipv6s] A list of IPv6 allocations under this VPC.
  /// [label] The label of the VPC.
  /// [region] The region where the VPC is deployed.
  /// [updated] The date and time when the VPC was last updated.
  GetVpcsVpc({
    required this.created,
    required this.description,
    required this.id,
    required this.ipv6s,
    required this.label,
    required this.region,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'description': description,
      'id': id,
      'ipv6s': pulumi.Input.mapInputValue<List<GetVpcsVpcIpv6>, List<Map<String, dynamic>>>(ipv6s, (value) => pulumi.Input.encodeList<GetVpcsVpcIpv6, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': label,
      'region': region,
      'updated': updated,
    };
  }

  factory GetVpcsVpc.fromMap(Map<String, dynamic> map) {
    return GetVpcsVpc(
      created: (map['created'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      ipv6s: (pulumi.Input.decodeList<GetVpcsVpcIpv6>(map['ipv6s'], (value) => GetVpcsVpcIpv6.fromMap((value as Map).cast<String, dynamic>()))).input(),
      label: (map['label'] as String).input(),
      region: (map['region'] as String).input(),
      updated: (map['updated'] as String).input(),
    );
  }
}

