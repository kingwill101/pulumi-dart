// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nodebalancer_configs_filter.dart';

/// {@template pulumi_index_get_nodebalancer_configs_get_nodebalancer_configs_args_doc}
/// Arguments for getNodebalancerConfigs.
/// {@endtemplate}
/// {@macro pulumi_index_get_nodebalancer_configs_get_nodebalancer_configs_args_doc}
class GetNodebalancerConfigsArgs {
  final pulumi.Input<List<GetNodebalancerConfigsFilter>>? filters;
  /// The ID of the NodeBalancer to access.
  ///
  /// * `filter` - (Optional) A set of filters used to select Linode NodeBalancers that meet certain requirements.
  final pulumi.Input<int> nodebalancerId;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetNodebalancerConfigsArgs].
  /// [filters] Optional.
  /// [nodebalancerId] The ID of the NodeBalancer to access.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetNodebalancerConfigsArgs({
    pulumi.Output<List<GetNodebalancerConfigsFilter>>? filters,
    required pulumi.Output<int> nodebalancerId,
    pulumi.Output<String>? order,
    pulumi.Output<String>? orderBy,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetNodebalancerConfigsFilter>>(filters),
      nodebalancerId = pulumi.Input.asInput<int>(nodebalancerId),
      order = pulumi.Input.asOptionalInput<String>(order),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetNodebalancerConfigsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetNodebalancerConfigsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodebalancerId': nodebalancerId,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetNodebalancerConfigsArgs.fromMap(Map<String, dynamic> map) {
    return GetNodebalancerConfigsArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetNodebalancerConfigsFilter>>(pulumi.Input.decodeList<GetNodebalancerConfigsFilter>(map['filters'], (value) => GetNodebalancerConfigsFilter.fromMap((value as Map).cast<String, dynamic>()))),
      nodebalancerId: pulumi.Output.create<int>(map['nodebalancerId'] as int),
      order: map['order'] == null ? null : pulumi.Output.create<String>(map['order'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
    );
  }
}

