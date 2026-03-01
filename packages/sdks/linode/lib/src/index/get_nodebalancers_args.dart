// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nodebalancers_filter.dart';

/// {@template pulumi_index_get_nodebalancers_get_nodebalancers_args_doc}
/// Arguments for getNodebalancers.
/// {@endtemplate}
/// {@macro pulumi_index_get_nodebalancers_get_nodebalancers_args_doc}
class GetNodebalancersArgs {
  final pulumi.Input<List<GetNodebalancersFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetNodebalancersArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetNodebalancersArgs({
    pulumi.Output<List<GetNodebalancersFilter>>? filters,
    pulumi.Output<String>? order,
    pulumi.Output<String>? orderBy,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetNodebalancersFilter>>(filters),
      order = pulumi.Input.asOptionalInput<String>(order),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetNodebalancersFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetNodebalancersFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetNodebalancersArgs.fromMap(Map<String, dynamic> map) {
    return GetNodebalancersArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetNodebalancersFilter>>(pulumi.Input.decodeList<GetNodebalancersFilter>(map['filters'], (value) => GetNodebalancersFilter.fromMap((value as Map).cast<String, dynamic>()))),
      order: map['order'] == null ? null : pulumi.Output.create<String>(map['order'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
    );
  }
}

