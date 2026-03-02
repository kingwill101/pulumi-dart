// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_regions_filter.dart';
import 'get_genai_regions_sort.dart';

/// {@template pulumi_index_get_genai_regions_get_genai_regions_args_doc}
/// Arguments for getGenaiRegions.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_regions_get_genai_regions_args_doc}
class GetGenaiRegionsArgs {
  final pulumi.Input<List<GetGenaiRegionsFilter>>? filters;
  final pulumi.Input<List<GetGenaiRegionsSort>>? sorts;

  /// Creates a new [GetGenaiRegionsArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  GetGenaiRegionsArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiRegionsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGenaiRegionsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiRegionsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGenaiRegionsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGenaiRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiRegionsArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetGenaiRegionsFilter>(map['filters']!, (value) => GetGenaiRegionsFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sorts: map['sorts'] == null ? null : (pulumi.Input.decodeList<GetGenaiRegionsSort>(map['sorts']!, (value) => GetGenaiRegionsSort.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

