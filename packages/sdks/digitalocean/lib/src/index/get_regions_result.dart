// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_filter.dart';
import 'get_regions_region.dart';
import 'get_regions_sort.dart';

/// Result data returned by getRegions.
class GetRegionsResult {
  final List<GetRegionsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A set of regions satisfying any `filter` and `sort` criteria. Each region has the following attributes:
  final List<GetRegionsRegion> regions;
  final List<GetRegionsSort>? sorts;

  /// Creates a new [GetRegionsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [regions] A set of regions satisfying any `filter` and `sort` criteria. Each region has the following attributes:
  /// [sorts] Optional.
  GetRegionsResult({
    this.filters,
    required this.id,
    required this.regions,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'regions': pulumi.Input.encodeList<GetRegionsRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetRegionsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionsFilter>(guardedValue, (value) => GetRegionsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      regions: pulumi.Input.decodeList<GetRegionsRegion>(map['regions']!, (value) => GetRegionsRegion.fromMap((value as Map).cast<String, dynamic>())),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionsSort>(guardedValue, (value) => GetRegionsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

