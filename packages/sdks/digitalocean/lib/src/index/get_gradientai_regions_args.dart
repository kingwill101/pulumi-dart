// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_regions_filter.dart';
import 'get_gradientai_regions_sort.dart';

/// {@template pulumi_index_get_gradientai_regions_get_gradientai_regions_args_doc}
/// Arguments for getGradientaiRegions.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_regions_get_gradientai_regions_args_doc}
class GetGradientaiRegionsArgs {
  final pulumi.Input<List<GetGradientaiRegionsFilter>>? filters;
  final pulumi.Input<List<GetGradientaiRegionsSort>>? sorts;

  /// Creates a new [GetGradientaiRegionsArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  const GetGradientaiRegionsArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiRegionsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGradientaiRegionsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiRegionsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGradientaiRegionsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGradientaiRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiRegionsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiRegionsFilter>(guardedValue, (value) => GetGradientaiRegionsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGradientaiRegionsSort>(guardedValue, (value) => GetGradientaiRegionsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
