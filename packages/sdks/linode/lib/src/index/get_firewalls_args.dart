// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewalls_filter.dart';

/// {@template pulumi_index_get_firewalls_get_firewalls_args_doc}
/// Arguments for getFirewalls.
/// {@endtemplate}
/// {@macro pulumi_index_get_firewalls_get_firewalls_args_doc}
class GetFirewallsArgs {
  final pulumi.Input<List<GetFirewallsFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetFirewallsArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetFirewallsArgs({
    this.filters,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetFirewallsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetFirewallsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetFirewallsArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallsArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetFirewallsFilter>(map['filters'], (value) => GetFirewallsFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      order: map['order'] == null ? null : (map['order'] as String).input(),
      orderBy: map['orderBy'] == null ? null : (map['orderBy'] as String).input(),
    );
  }
}

