// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agents_agent.dart';
import 'get_genai_agents_filter.dart';
import 'get_genai_agents_sort.dart';

/// Result data returned by getGenaiAgents.
class GetGenaiAgentsResult {
  final List<GetGenaiAgentsAgent> agents;
  final List<GetGenaiAgentsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? onlyDeployed;
  final List<GetGenaiAgentsSort>? sorts;

  /// Creates a new [GetGenaiAgentsResult].
  /// [agents] Required.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [onlyDeployed] Optional.
  /// [sorts] Optional.
  const GetGenaiAgentsResult({
    required this.agents,
    this.filters,
    required this.id,
    this.onlyDeployed,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agents': pulumi.Input.encodeList<GetGenaiAgentsAgent, Map<String, dynamic>>(agents, (value) => value.toMap()),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiAgentsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'onlyDeployed': ?onlyDeployed,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiAgentsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGenaiAgentsResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsResult(
      agents: pulumi.Input.decodeList<GetGenaiAgentsAgent>(map['agents']!, (value) => GetGenaiAgentsAgent.fromMap((value as Map).cast<String, dynamic>())),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiAgentsFilter>(guardedValue, (value) => GetGenaiAgentsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      onlyDeployed: (() { final guardedValue = map['onlyDeployed']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiAgentsSort>(guardedValue, (value) => GetGenaiAgentsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
