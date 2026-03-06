// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_regions_filter.dart';
import 'get_genai_regions_region.dart';
import 'get_genai_regions_sort.dart';

/// Result data returned by getGenaiRegions.
class GetGenaiRegionsResult {
  final List<GetGenaiRegionsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGenaiRegionsRegion> regions;
  final List<GetGenaiRegionsSort>? sorts;

  /// Creates a new [GetGenaiRegionsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [regions] Required.
  /// [sorts] Optional.
  const GetGenaiRegionsResult({
    this.filters,
    required this.id,
    required this.regions,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiRegionsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'regions': pulumi.Input.encodeList<GetGenaiRegionsRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiRegionsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGenaiRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiRegionsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiRegionsFilter>(guardedValue, (value) => GetGenaiRegionsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      regions: pulumi.Input.decodeList<GetGenaiRegionsRegion>(map['regions']!, (value) => GetGenaiRegionsRegion.fromMap((value as Map).cast<String, dynamic>())),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiRegionsSort>(guardedValue, (value) => GetGenaiRegionsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

