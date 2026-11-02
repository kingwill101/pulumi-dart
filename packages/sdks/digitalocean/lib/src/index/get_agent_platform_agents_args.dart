// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_agents_filter.dart';
import 'get_agent_platform_agents_sort.dart';

/// {@template pulumi_index_get_agent_platform_agents_get_agent_platform_agents_args_doc}
/// Arguments for getAgentPlatformAgents.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_agents_get_agent_platform_agents_args_doc}
class GetAgentPlatformAgentsArgs {
  final pulumi.Input<List<GetAgentPlatformAgentsFilter>?>? filters;
  final pulumi.Input<bool?>? onlyDeployed;
  final pulumi.Input<List<GetAgentPlatformAgentsSort>?>? sorts;

  /// Creates a new [GetAgentPlatformAgentsArgs].
  /// [filters] Optional.
  /// [onlyDeployed] Optional.
  /// [sorts] Optional.
  const GetAgentPlatformAgentsArgs({
    this.filters,
    this.onlyDeployed,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onlyDeployed': ?onlyDeployed,
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentsSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAgentPlatformAgentsArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsFilter>(guardedValue, (value) => GetAgentPlatformAgentsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      onlyDeployed: (() { final guardedValue = map['onlyDeployed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsSort>(guardedValue, (value) => GetAgentPlatformAgentsSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
