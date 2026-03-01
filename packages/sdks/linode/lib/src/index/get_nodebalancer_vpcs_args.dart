// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nodebalancer_vpcs_filter.dart';

/// {@template pulumi_index_get_nodebalancer_vpcs_get_nodebalancer_vpcs_args_doc}
/// Arguments for getNodebalancerVpcs.
/// {@endtemplate}
/// {@macro pulumi_index_get_nodebalancer_vpcs_get_nodebalancer_vpcs_args_doc}
class GetNodebalancerVpcsArgs {
  final pulumi.Input<List<GetNodebalancerVpcsFilter>>? filters;
  /// The ID of the NodeBalancer to list VPC configurations for.
  ///
  /// * `filter` - (Optional) A set of filters used to select VPC configurations that meet certain requirements.
  final pulumi.Input<int> nodebalancerId;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetNodebalancerVpcsArgs].
  /// [filters] Optional.
  /// [nodebalancerId] The ID of the NodeBalancer to list VPC configurations for.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetNodebalancerVpcsArgs({
    pulumi.Output<List<GetNodebalancerVpcsFilter>>? filters,
    required pulumi.Output<int> nodebalancerId,
    pulumi.Output<String>? order,
    pulumi.Output<String>? orderBy,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetNodebalancerVpcsFilter>>(filters),
      nodebalancerId = pulumi.Input.asInput<int>(nodebalancerId),
      order = pulumi.Input.asOptionalInput<String>(order),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetNodebalancerVpcsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetNodebalancerVpcsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodebalancerId': nodebalancerId,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetNodebalancerVpcsArgs.fromMap(Map<String, dynamic> map) {
    return GetNodebalancerVpcsArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetNodebalancerVpcsFilter>>(pulumi.Input.decodeList<GetNodebalancerVpcsFilter>(map['filters'], (value) => GetNodebalancerVpcsFilter.fromMap((value as Map).cast<String, dynamic>()))),
      nodebalancerId: pulumi.Output.create<int>(map['nodebalancerId'] as int),
      order: map['order'] == null ? null : pulumi.Output.create<String>(map['order'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
    );
  }
}

