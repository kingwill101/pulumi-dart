// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_filter.dart';
import 'get_regions_region.dart';

/// Result data returned by getRegions.
class GetRegionsResult {
  final List<GetRegionsFilter>? filters;
  final String id;
  final List<GetRegionsRegion> regions;

  /// Creates a new [GetRegionsResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [regions] Required.
  const GetRegionsResult({
    this.filters,
    required this.id,
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'regions': pulumi.Input.encodeList<GetRegionsRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
    };
  }

  factory GetRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetRegionsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionsFilter>(guardedValue, (value) => GetRegionsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      regions: pulumi.Input.decodeList<GetRegionsRegion>(map['regions']!, (value) => GetRegionsRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

