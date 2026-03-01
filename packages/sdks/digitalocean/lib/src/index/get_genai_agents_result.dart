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
  GetGenaiAgentsResult({
    required this.agents,
    this.filters,
    required this.id,
    this.onlyDeployed,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agents': pulumi.Input.encodeList<GetGenaiAgentsAgent, Map<String, dynamic>>(agents, (value) => value.toMap()),
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetGenaiAgentsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'onlyDeployed': ?onlyDeployed,
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetGenaiAgentsSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetGenaiAgentsResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsResult(
      agents: pulumi.Input.decodeList<GetGenaiAgentsAgent>(map['agents'], (value) => GetGenaiAgentsAgent.fromMap((value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentsFilter>(map['filters'], (value) => GetGenaiAgentsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      onlyDeployed: map['onlyDeployed'] == null ? null : map['onlyDeployed'] as bool,
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentsSort>(map['sorts'], (value) => GetGenaiAgentsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

