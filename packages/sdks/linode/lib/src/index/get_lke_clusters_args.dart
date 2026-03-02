// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lke_clusters_filter.dart';

/// {@template pulumi_index_get_lke_clusters_get_lke_clusters_args_doc}
/// Arguments for getLkeClusters.
/// {@endtemplate}
/// {@macro pulumi_index_get_lke_clusters_get_lke_clusters_args_doc}
class GetLkeClustersArgs {
  final pulumi.Input<List<GetLkeClustersFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetLkeClustersArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetLkeClustersArgs({
    this.filters,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetLkeClustersFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetLkeClustersFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetLkeClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetLkeClustersArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetLkeClustersFilter>(map['filters'], (value) => GetLkeClustersFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      order: map['order'] == null ? null : (map['order'] as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy'] as String).input(),
    );
  }
}

