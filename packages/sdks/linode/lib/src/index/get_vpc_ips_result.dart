// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ips_filter.dart';
import 'get_vpc_ips_vpc_ip.dart';

/// Result data returned by getVpcIps.
class GetVpcIpsResult {
  final List<GetVpcIpsFilter>? filters;
  final String id;
  final bool? ipv6;
  /// The unique globally general API entity identifier for the VPC.
  final int? vpcId;
  final List<GetVpcIpsVpcIp> vpcIps;

  /// Creates a new [GetVpcIpsResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [ipv6] Optional.
  /// [vpcId] The unique globally general API entity identifier for the VPC.
  /// [vpcIps] Required.
  GetVpcIpsResult({
    this.filters,
    required this.id,
    this.ipv6,
    this.vpcId,
    required this.vpcIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetVpcIpsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ipv6': ?ipv6,
      'vpcId': ?vpcId,
      'vpcIps': pulumi.Input.encodeList<GetVpcIpsVpcIp, Map<String, dynamic>>(vpcIps, (value) => value.toMap()),
    };
  }

  factory GetVpcIpsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetVpcIpsFilter>(map['filters']!, (value) => GetVpcIpsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipv6: map['ipv6'] == null ? null : map['ipv6']! as bool,
      vpcId: map['vpcId'] == null ? null : map['vpcId']! as int,
      vpcIps: pulumi.Input.decodeList<GetVpcIpsVpcIp>(map['vpcIps'], (value) => GetVpcIpsVpcIp.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

