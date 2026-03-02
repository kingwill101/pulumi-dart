// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agents_agent.dart';
import 'get_gradientai_agents_filter.dart';
import 'get_gradientai_agents_sort.dart';

/// Result data returned by getGradientaiAgents.
class GetGradientaiAgentsResult {
  final List<GetGradientaiAgentsAgent> agents;
  final List<GetGradientaiAgentsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? onlyDeployed;
  final List<GetGradientaiAgentsSort>? sorts;

  /// Creates a new [GetGradientaiAgentsResult].
  /// [agents] Required.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [onlyDeployed] Optional.
  /// [sorts] Optional.
  GetGradientaiAgentsResult({
    required this.agents,
    this.filters,
    required this.id,
    this.onlyDeployed,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agents': pulumi.Input.encodeList<GetGradientaiAgentsAgent, Map<String, dynamic>>(agents, (value) => value.toMap()),
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetGradientaiAgentsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'onlyDeployed': ?onlyDeployed,
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetGradientaiAgentsSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetGradientaiAgentsResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsResult(
      agents: pulumi.Input.decodeList<GetGradientaiAgentsAgent>(map['agents'], (value) => GetGradientaiAgentsAgent.fromMap((value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentsFilter>(map['filters']!, (value) => GetGradientaiAgentsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      onlyDeployed: map['onlyDeployed'] == null ? null : map['onlyDeployed']! as bool,
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentsSort>(map['sorts']!, (value) => GetGradientaiAgentsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

