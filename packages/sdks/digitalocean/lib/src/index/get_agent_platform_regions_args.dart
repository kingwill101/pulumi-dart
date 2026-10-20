// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_regions_filter.dart';
import 'get_agent_platform_regions_sort.dart';

/// {@template pulumi_index_get_agent_platform_regions_get_agent_platform_regions_args_doc}
/// Arguments for getAgentPlatformRegions.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_regions_get_agent_platform_regions_args_doc}
class GetAgentPlatformRegionsArgs {
  final pulumi.Input<List<GetAgentPlatformRegionsFilter>?>? filters;
  final pulumi.Input<List<GetAgentPlatformRegionsSort>?>? sorts;

  /// Creates a new [GetAgentPlatformRegionsArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  const GetAgentPlatformRegionsArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformRegionsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetAgentPlatformRegionsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformRegionsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetAgentPlatformRegionsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAgentPlatformRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformRegionsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformRegionsFilter>(guardedValue, (value) => GetAgentPlatformRegionsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformRegionsSort>(guardedValue, (value) => GetAgentPlatformRegionsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
