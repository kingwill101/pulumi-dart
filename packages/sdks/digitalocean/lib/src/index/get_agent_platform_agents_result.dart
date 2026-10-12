// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_agents_agent.dart';
import 'get_agent_platform_agents_filter.dart';
import 'get_agent_platform_agents_sort.dart';

/// Result data returned by getAgentPlatformAgents.
class GetAgentPlatformAgentsResult {
  final List<GetAgentPlatformAgentsAgent>? agents;
  final List<GetAgentPlatformAgentsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? onlyDeployed;
  final List<GetAgentPlatformAgentsSort>? sorts;

  /// Creates a new [GetAgentPlatformAgentsResult].
  /// [agents] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [onlyDeployed] Optional.
  /// [sorts] Optional.
  const GetAgentPlatformAgentsResult({
    this.agents,
    this.filters,
    this.id,
    this.onlyDeployed,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agents': ?(() { final guardedValue = agents; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentsAgent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'onlyDeployed': ?onlyDeployed,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAgentPlatformAgentsResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsResult(
      agents: (() { final guardedValue = map['agents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentsAgent>(guardedValue, (value) => GetAgentPlatformAgentsAgent.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentsFilter>(guardedValue, (value) => GetAgentPlatformAgentsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      onlyDeployed: (() { final guardedValue = map['onlyDeployed']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentsSort>(guardedValue, (value) => GetAgentPlatformAgentsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
