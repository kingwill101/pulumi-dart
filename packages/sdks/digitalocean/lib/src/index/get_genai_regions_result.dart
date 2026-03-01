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
  GetGenaiRegionsResult({
    this.filters,
    required this.id,
    required this.regions,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetGenaiRegionsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'regions': pulumi.Input.encodeList<GetGenaiRegionsRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetGenaiRegionsSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetGenaiRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiRegionsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetGenaiRegionsFilter>(map['filters'], (value) => GetGenaiRegionsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      regions: pulumi.Input.decodeList<GetGenaiRegionsRegion>(map['regions'], (value) => GetGenaiRegionsRegion.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetGenaiRegionsSort>(map['sorts'], (value) => GetGenaiRegionsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

