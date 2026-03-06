// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spaces_buckets_filter.dart';
import 'get_spaces_buckets_sort.dart';

/// {@template pulumi_index_get_spaces_buckets_get_spaces_buckets_args_doc}
/// Arguments for getSpacesBuckets.
/// {@endtemplate}
/// {@macro pulumi_index_get_spaces_buckets_get_spaces_buckets_args_doc}
class GetSpacesBucketsArgs {
  /// Filter the results.
  /// The `filter` block is documented below.
  final pulumi.Input<List<GetSpacesBucketsFilter>>? filters;
  /// Sort the results.
  /// The `sort` block is documented below.
  final pulumi.Input<List<GetSpacesBucketsSort>>? sorts;

  /// Creates a new [GetSpacesBucketsArgs].
  /// [filters] Filter the results.
  /// [sorts] Sort the results.
  const GetSpacesBucketsArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetSpacesBucketsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetSpacesBucketsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetSpacesBucketsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetSpacesBucketsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSpacesBucketsArgs.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetSpacesBucketsFilter>(guardedValue, (value) => GetSpacesBucketsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetSpacesBucketsSort>(guardedValue, (value) => GetSpacesBucketsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

