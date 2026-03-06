// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_filter.dart';
import 'get_domains_sort.dart';

/// {@template pulumi_index_get_domains_get_domains_args_doc}
/// Arguments for getDomains.
/// {@endtemplate}
/// {@macro pulumi_index_get_domains_get_domains_args_doc}
class GetDomainsArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetDomainsFilter>>? filters;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetDomainsSort>>? sorts;

  /// Creates a new [GetDomainsArgs].
  /// [filters] Filter the results.
  /// [sorts] Sort the results.
  const GetDomainsArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDomainsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDomainsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetDomainsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetDomainsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetDomainsFilter>(guardedValue, (value) => GetDomainsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetDomainsSort>(guardedValue, (value) => GetDomainsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

