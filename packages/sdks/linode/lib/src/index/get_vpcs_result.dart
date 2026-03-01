// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpcs_filter.dart';
import 'get_vpcs_vpc.dart';

/// Result data returned by getVpcs.
class GetVpcsResult {
  final List<GetVpcsFilter>? filters;
  /// The unique id of this VPC.
  final String id;
  final List<GetVpcsVpc> vpcs;

  /// Creates a new [GetVpcsResult].
  /// [filters] Optional.
  /// [id] The unique id of this VPC.
  /// [vpcs] Required.
  GetVpcsResult({
    this.filters,
    required this.id,
    required this.vpcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetVpcsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'vpcs': pulumi.Input.encodeList<GetVpcsVpc, Map<String, dynamic>>(vpcs, (value) => value.toMap()),
    };
  }

  factory GetVpcsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetVpcsFilter>(map['filters'], (value) => GetVpcsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      vpcs: pulumi.Input.decodeList<GetVpcsVpc>(map['vpcs'], (value) => GetVpcsVpc.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

