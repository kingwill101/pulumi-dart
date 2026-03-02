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
  GetGradientaiAgentVersionsResult({
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
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetGradientaiAgentVersionsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetGradientaiAgentVersionsSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetGradientaiAgentVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentVersionsResult(
      agentId: map['agentId'] as String,
      agentVersions: pulumi.Input.decodeList<GetGradientaiAgentVersionsAgentVersion>(map['agentVersions'], (value) => GetGradientaiAgentVersionsAgentVersion.fromMap((value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentVersionsFilter>(map['filters']!, (value) => GetGradientaiAgentVersionsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentVersionsSort>(map['sorts']!, (value) => GetGradientaiAgentVersionsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

