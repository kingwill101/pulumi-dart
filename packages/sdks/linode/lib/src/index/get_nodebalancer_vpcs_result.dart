// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nodebalancer_vpcs_filter.dart';
import 'get_nodebalancer_vpcs_vpc_config.dart';

/// Result data returned by getNodebalancerVpcs.
class GetNodebalancerVpcsResult {
  final List<GetNodebalancerVpcsFilter>? filters;
  /// The ID of the VPC configuration.
  final String id;
  /// The ID of the parent NodeBalancer for this VPC configuration.
  final int nodebalancerId;
  final String? order;
  final String? orderBy;
  final List<GetNodebalancerVpcsVpcConfig> vpcConfigs;

  /// Creates a new [GetNodebalancerVpcsResult].
  /// [filters] Optional.
  /// [id] The ID of the VPC configuration.
  /// [nodebalancerId] The ID of the parent NodeBalancer for this VPC configuration.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [vpcConfigs] Required.
  GetNodebalancerVpcsResult({
    this.filters,
    required this.id,
    required this.nodebalancerId,
    this.order,
    this.orderBy,
    required this.vpcConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetNodebalancerVpcsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'nodebalancerId': nodebalancerId,
      'order': ?order,
      'orderBy': ?orderBy,
      'vpcConfigs': pulumi.Input.encodeList<GetNodebalancerVpcsVpcConfig, Map<String, dynamic>>(vpcConfigs, (value) => value.toMap()),
    };
  }

  factory GetNodebalancerVpcsResult.fromMap(Map<String, dynamic> map) {
    return GetNodebalancerVpcsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetNodebalancerVpcsFilter>(map['filters']!, (value) => GetNodebalancerVpcsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      nodebalancerId: map['nodebalancerId'] as int,
      order: map['order'] == null ? null : map['order']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
      vpcConfigs: pulumi.Input.decodeList<GetNodebalancerVpcsVpcConfig>(map['vpcConfigs'], (value) => GetNodebalancerVpcsVpcConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

