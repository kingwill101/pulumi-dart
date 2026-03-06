// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipv6.dart';

/// Result data returned by getVpc.
class GetVpcResult {
  /// The date and time when the VPC was created.
  final String created;
  /// The user-defined description of this VPC.
  final String description;
  final String id;
  /// A list of IPv6 allocations under this VPC.
  final List<GetVpcIpv6> ipv6s;
  /// The label of the VPC.
  final String label;
  /// The region where the VPC is deployed.
  final String region;
  /// The date and time when the VPC was last updated.
  final String updated;

  /// Creates a new [GetVpcResult].
  /// [created] The date and time when the VPC was created.
  /// [description] The user-defined description of this VPC.
  /// [id] Required.
  /// [ipv6s] A list of IPv6 allocations under this VPC.
  /// [label] The label of the VPC.
  /// [region] The region where the VPC is deployed.
  /// [updated] The date and time when the VPC was last updated.
  const GetVpcResult({
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
      'ipv6s': pulumi.Input.encodeList<GetVpcIpv6, Map<String, dynamic>>(ipv6s, (value) => value.toMap()),
      'label': label,
      'region': region,
      'updated': updated,
    };
  }

  factory GetVpcResult.fromMap(Map<String, dynamic> map) {
    return GetVpcResult(
      created: map['created'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      ipv6s: pulumi.Input.decodeList<GetVpcIpv6>(map['ipv6s']!, (value) => GetVpcIpv6.fromMap((value as Map).cast<String, dynamic>())),
      label: map['label'] as String,
      region: map['region'] as String,
      updated: map['updated'] as String,
    );
  }
}

