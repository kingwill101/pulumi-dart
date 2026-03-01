// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_filter.dart';

/// {@template pulumi_index_get_domains_get_domains_args_doc}
/// Arguments for getDomains.
/// {@endtemplate}
/// {@macro pulumi_index_get_domains_get_domains_args_doc}
class GetDomainsArgs {
  final pulumi.Input<List<GetDomainsFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetDomainsArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetDomainsArgs({
    pulumi.Output<List<GetDomainsFilter>>? filters,
    pulumi.Output<String>? order,
    pulumi.Output<String>? orderBy,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetDomainsFilter>>(filters),
      order = pulumi.Input.asOptionalInput<String>(order),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDomainsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDomainsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainsArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetDomainsFilter>>(pulumi.Input.decodeList<GetDomainsFilter>(map['filters'], (value) => GetDomainsFilter.fromMap((value as Map).cast<String, dynamic>()))),
      order: map['order'] == null ? null : pulumi.Output.create<String>(map['order'] as String),
      orderBy: map['orderBy'] == null ? null : pulumi.Output.create<String>(map['orderBy'] as String),
    );
  }
}

