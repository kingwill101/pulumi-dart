// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_subnets_filter.dart';
import 'get_vpc_subnets_vpc_subnet.dart';

/// Result data returned by getVpcSubnets.
class GetVpcSubnetsResult {
  final List<GetVpcSubnetsFilter>? filters;

  /// ID of the interface.
  final String id;
  final int vpcId;
  final List<GetVpcSubnetsVpcSubnet> vpcSubnets;

  /// Creates a new [GetVpcSubnetsResult].
  /// [filters] Optional.
  /// [id] ID of the interface.
  /// [vpcId] Required.
  /// [vpcSubnets] Required.
  GetVpcSubnetsResult({
    this.filters,
    required this.id,
    required this.vpcId,
    required this.vpcSubnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetVpcSubnetsFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'vpcId': vpcId,
      'vpcSubnets':
          pulumi.Input.encodeList<GetVpcSubnetsVpcSubnet, Map<String, dynamic>>(
            vpcSubnets,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetVpcSubnetsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcSubnetsResult(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetVpcSubnetsFilter>(
          guardedValue,
          (value) => GetVpcSubnetsFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      vpcId: map['vpcId'] as int,
      vpcSubnets: pulumi.Input.decodeList<GetVpcSubnetsVpcSubnet>(
        map['vpcSubnets']!,
        (value) => GetVpcSubnetsVpcSubnet.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
