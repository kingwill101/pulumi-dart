// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_networking_ips_filter.dart';

/// {@template pulumi_index_get_networking_ips_get_networking_ips_args_doc}
/// Arguments for getNetworkingIps.
/// {@endtemplate}
/// {@macro pulumi_index_get_networking_ips_get_networking_ips_args_doc}
class GetNetworkingIpsArgs {
  final pulumi.Input<List<GetNetworkingIpsFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetNetworkingIpsArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetNetworkingIpsArgs({
    this.filters,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetNetworkingIpsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetNetworkingIpsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetNetworkingIpsArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkingIpsArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetNetworkingIpsFilter>(map['filters'], (value) => GetNetworkingIpsFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      order: map['order'] == null ? null : (map['order'] as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy'] as String).input(),
    );
  }
}

