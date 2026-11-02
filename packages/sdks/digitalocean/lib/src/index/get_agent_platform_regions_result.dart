// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_regions_filter.dart';
import 'get_agent_platform_regions_region.dart';
import 'get_agent_platform_regions_sort.dart';

/// Result data returned by getAgentPlatformRegions.
class GetAgentPlatformRegionsResult {
  final List<GetAgentPlatformRegionsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetAgentPlatformRegionsRegion>? regions;
  final List<GetAgentPlatformRegionsSort>? sorts;

  /// Creates a new [GetAgentPlatformRegionsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [regions] Optional.
  /// [sorts] Optional.
  const GetAgentPlatformRegionsResult({
    this.filters,
    this.id,
    this.regions,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformRegionsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'regions': ?(() { final guardedValue = regions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformRegionsRegion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformRegionsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAgentPlatformRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformRegionsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformRegionsFilter>(guardedValue, (value) => GetAgentPlatformRegionsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformRegionsRegion>(guardedValue, (value) => GetAgentPlatformRegionsRegion.fromMap((value as Map).cast<String, dynamic>())); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformRegionsSort>(guardedValue, (value) => GetAgentPlatformRegionsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
