// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_regions_filter.dart';
import 'get_gradientai_regions_region.dart';
import 'get_gradientai_regions_sort.dart';

/// Result data returned by getGradientaiRegions.
class GetGradientaiRegionsResult {
  final List<GetGradientaiRegionsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGradientaiRegionsRegion> regions;
  final List<GetGradientaiRegionsSort>? sorts;

  /// Creates a new [GetGradientaiRegionsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [regions] Required.
  /// [sorts] Optional.
  const GetGradientaiRegionsResult({
    this.filters,
    required this.id,
    required this.regions,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiRegionsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'regions': pulumi.Input.encodeList<GetGradientaiRegionsRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiRegionsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGradientaiRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiRegionsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiRegionsFilter>(guardedValue, (value) => GetGradientaiRegionsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      regions: pulumi.Input.decodeList<GetGradientaiRegionsRegion>(map['regions']!, (value) => GetGradientaiRegionsRegion.fromMap((value as Map).cast<String, dynamic>())),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiRegionsSort>(guardedValue, (value) => GetGradientaiRegionsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

