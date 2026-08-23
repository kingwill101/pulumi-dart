// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agent_versions_agent_version.dart';
import 'get_gradientai_agent_versions_filter.dart';
import 'get_gradientai_agent_versions_sort.dart';

/// Result data returned by getGradientaiAgentVersions.
class GetGradientaiAgentVersionsResult {
  final String agentId;
  final List<GetGradientaiAgentVersionsAgentVersion> agentVersions;
  final List<GetGradientaiAgentVersionsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGradientaiAgentVersionsSort>? sorts;

  /// Creates a new [GetGradientaiAgentVersionsResult].
  /// [agentId] Required.
  /// [agentVersions] Required.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  const GetGradientaiAgentVersionsResult({
    required this.agentId,
    required this.agentVersions,
    this.filters,
    required this.id,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'agentVersions': pulumi.Input.encodeList<GetGradientaiAgentVersionsAgentVersion, Map<String, dynamic>>(agentVersions, (value) => value.toMap()),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiAgentVersionsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiAgentVersionsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGradientaiAgentVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentVersionsResult(
      agentId: map['agentId'] as String,
      agentVersions: pulumi.Input.decodeList<GetGradientaiAgentVersionsAgentVersion>(map['agentVersions']!, (value) => GetGradientaiAgentVersionsAgentVersion.fromMap((value as Map).cast<String, dynamic>())),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiAgentVersionsFilter>(guardedValue, (value) => GetGradientaiAgentVersionsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiAgentVersionsSort>(guardedValue, (value) => GetGradientaiAgentVersionsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
