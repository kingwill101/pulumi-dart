// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_filter.dart';
import 'get_regions_sort.dart';

/// {@template pulumi_index_get_regions_get_regions_args_doc}
/// Arguments for getRegions.
/// {@endtemplate}
/// {@macro pulumi_index_get_regions_get_regions_args_doc}
class GetRegionsArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetRegionsFilter>>? filters;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetRegionsSort>>? sorts;

  /// Creates a new [GetRegionsArgs].
  /// [filters] Filter the results.
  /// [sorts] Sort the results.
  GetRegionsArgs({
    pulumi.Output<List<GetRegionsFilter>>? filters,
    pulumi.Output<List<GetRegionsSort>>? sorts,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetRegionsFilter>>(filters),
      sorts = pulumi.Input.asOptionalInput<List<GetRegionsSort>>(sorts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetRegionsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetRegionsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetRegionsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetRegionsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionsArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetRegionsFilter>>(pulumi.Input.decodeList<GetRegionsFilter>(map['filters'], (value) => GetRegionsFilter.fromMap((value as Map).cast<String, dynamic>()))),
      sorts: map['sorts'] == null ? null : pulumi.Output.create<List<GetRegionsSort>>(pulumi.Input.decodeList<GetRegionsSort>(map['sorts'], (value) => GetRegionsSort.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

