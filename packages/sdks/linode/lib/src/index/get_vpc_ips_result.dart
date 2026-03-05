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
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcIpsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'ipv6': ?ipv6,
      'vpcId': ?vpcId,
      'vpcIps': pulumi.Input.encodeList<GetVpcIpsVpcIp, Map<String, dynamic>>(vpcIps, (value) => value.toMap()),
    };
  }

  factory GetVpcIpsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcIpsFilter>(guardedValue, (value) => GetVpcIpsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as int; })(),
      vpcIps: pulumi.Input.decodeList<GetVpcIpsVpcIp>(map['vpcIps']!, (value) => GetVpcIpsVpcIp.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

