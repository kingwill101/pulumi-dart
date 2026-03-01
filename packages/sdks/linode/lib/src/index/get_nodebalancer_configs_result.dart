// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nodebalancer_configs_filter.dart';
import 'get_nodebalancer_configs_nodebalancer_config.dart';

/// Result data returned by getNodebalancerConfigs.
class GetNodebalancerConfigsResult {
  final List<GetNodebalancerConfigsFilter>? filters;
  /// The config's ID.
  final String id;
  final List<GetNodebalancerConfigsNodebalancerConfig> nodebalancerConfigs;
  /// The ID of the NodeBalancer that contains the config.
  final int nodebalancerId;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetNodebalancerConfigsResult].
  /// [filters] Optional.
  /// [id] The config's ID.
  /// [nodebalancerConfigs] Required.
  /// [nodebalancerId] The ID of the NodeBalancer that contains the config.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetNodebalancerConfigsResult({
    this.filters,
    required this.id,
    required this.nodebalancerConfigs,
    required this.nodebalancerId,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetNodebalancerConfigsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'nodebalancerConfigs': pulumi.Input.encodeList<GetNodebalancerConfigsNodebalancerConfig, Map<String, dynamic>>(nodebalancerConfigs, (value) => value.toMap()),
      'nodebalancerId': nodebalancerId,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetNodebalancerConfigsResult.fromMap(Map<String, dynamic> map) {
    return GetNodebalancerConfigsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetNodebalancerConfigsFilter>(map['filters'], (value) => GetNodebalancerConfigsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      nodebalancerConfigs: pulumi.Input.decodeList<GetNodebalancerConfigsNodebalancerConfig>(map['nodebalancerConfigs'], (value) => GetNodebalancerConfigsNodebalancerConfig.fromMap((value as Map).cast<String, dynamic>())),
      nodebalancerId: map['nodebalancerId'] as int,
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
    );
  }
}

