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
      'agents':
          pulumi.Input.encodeList<
            GetGradientaiAgentsAgent,
            Map<String, dynamic>
          >(agents, (value) => value.toMap()),
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetGradientaiAgentsFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'onlyDeployed': ?onlyDeployed,
      'sorts': ?(() {
        final guardedValue = sorts;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetGradientaiAgentsSort,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory GetGradientaiAgentsResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsResult(
      agents: pulumi.Input.decodeList<GetGradientaiAgentsAgent>(
        map['agents']!,
        (value) => GetGradientaiAgentsAgent.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetGradientaiAgentsFilter>(
          guardedValue,
          (value) => GetGradientaiAgentsFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      onlyDeployed: (() {
        final guardedValue = map['onlyDeployed'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      sorts: (() {
        final guardedValue = map['sorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetGradientaiAgentsSort>(
          guardedValue,
          (value) => GetGradientaiAgentsSort.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
