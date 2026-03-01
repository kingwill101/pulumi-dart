// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vlans_filter.dart';

/// {@template pulumi_index_get_vlans_get_vlans_args_doc}
/// Arguments for getVlans.
/// {@endtemplate}
/// {@macro pulumi_index_get_vlans_get_vlans_args_doc}
class GetVlansArgs {
  final pulumi.Input<List<GetVlansFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetVlansArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetVlansArgs({
    pulumi.Output<List<GetVlansFilter>>? filters,
    pulumi.Output<String>? order,
    pulumi.Output<String>? orderBy,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetVlansFilter>>(filters),
      order = pulumi.Input.asOptionalInput<String>(order),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVlansFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVlansFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetVlansArgs.fromMap(Map<String, dynamic> map) {
    return GetVlansArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetVlansFilter>>(pulumi.Input.decodeList<GetVlansFilter>(map['filters'], (value) => GetVlansFilter.fromMap((value as Map).cast<String, dynamic>()))),
      order: map['order'] == null ? null : pulumi.Output.create<String>(map['order'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
    );
  }
}

