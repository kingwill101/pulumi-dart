// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agent_versions_agent_version.dart';
import 'get_genai_agent_versions_filter.dart';
import 'get_genai_agent_versions_sort.dart';

/// Result data returned by getGenaiAgentVersions.
class GetGenaiAgentVersionsResult {
  final String agentId;
  final List<GetGenaiAgentVersionsAgentVersion> agentVersions;
  final List<GetGenaiAgentVersionsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGenaiAgentVersionsSort>? sorts;

  /// Creates a new [GetGenaiAgentVersionsResult].
  /// [agentId] Required.
  /// [agentVersions] Required.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  GetGenaiAgentVersionsResult({
    required this.agentId,
    required this.agentVersions,
    this.filters,
    required this.id,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'agentVersions': pulumi.Input.encodeList<GetGenaiAgentVersionsAgentVersion, Map<String, dynamic>>(agentVersions, (value) => value.toMap()),
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetGenaiAgentVersionsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetGenaiAgentVersionsSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetGenaiAgentVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsResult(
      agentId: map['agentId'] as String,
      agentVersions: pulumi.Input.decodeList<GetGenaiAgentVersionsAgentVersion>(map['agentVersions'], (value) => GetGenaiAgentVersionsAgentVersion.fromMap((value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentVersionsFilter>(map['filters']!, (value) => GetGenaiAgentVersionsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentVersionsSort>(map['sorts']!, (value) => GetGenaiAgentVersionsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

