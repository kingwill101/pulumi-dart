// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tags_filter.dart';
import 'get_tags_sort.dart';

/// {@template pulumi_index_get_tags_get_tags_args_doc}
/// Arguments for getTags.
/// {@endtemplate}
/// {@macro pulumi_index_get_tags_get_tags_args_doc}
class GetTagsArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetTagsFilter>>? filters;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetTagsSort>>? sorts;

  /// Creates a new [GetTagsArgs].
  /// [filters] Filter the results.
  /// [sorts] Sort the results.
  GetTagsArgs({
    pulumi.Output<List<GetTagsFilter>>? filters,
    pulumi.Output<List<GetTagsSort>>? sorts,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetTagsFilter>>(filters),
      sorts = pulumi.Input.asOptionalInput<List<GetTagsSort>>(sorts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetTagsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetTagsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetTagsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetTagsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTagsArgs.fromMap(Map<String, dynamic> map) {
    return GetTagsArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetTagsFilter>>(pulumi.Input.decodeList<GetTagsFilter>(map['filters'], (value) => GetTagsFilter.fromMap((value as Map).cast<String, dynamic>()))),
      sorts: map['sorts'] == null ? null : pulumi.Output.create<List<GetTagsSort>>(pulumi.Input.decodeList<GetTagsSort>(map['sorts'], (value) => GetTagsSort.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

