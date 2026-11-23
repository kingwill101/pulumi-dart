// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_agent_versions_filter.dart';
import 'get_agent_platform_agent_versions_sort.dart';

/// {@template pulumi_index_get_agent_platform_agent_versions_get_agent_platform_agent_versions_args_doc}
/// Arguments for getAgentPlatformAgentVersions.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_agent_versions_get_agent_platform_agent_versions_args_doc}
class GetAgentPlatformAgentVersionsArgs {
  final pulumi.Input<String> agentId;
  final pulumi.Input<List<GetAgentPlatformAgentVersionsFilter>?>? filters;
  final pulumi.Input<List<GetAgentPlatformAgentVersionsSort>?>? sorts;

  /// Creates a new [GetAgentPlatformAgentVersionsArgs].
  /// [agentId] Required.
  /// [filters] Optional.
  /// [sorts] Optional.
  const GetAgentPlatformAgentVersionsArgs({
    required this.agentId,
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentVersionsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentVersionsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentVersionsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentVersionsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAgentPlatformAgentVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentVersionsArgs(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentVersionsFilter>(guardedValue, (value) => GetAgentPlatformAgentVersionsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentVersionsSort>(guardedValue, (value) => GetAgentPlatformAgentVersionsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
