// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agent_versions_agent_version.dart';
import 'get_genai_agent_versions_filter.dart';
import 'get_genai_agent_versions_sort.dart';

/// Result data returned by getGenaiAgentVersions.
class GetGenaiAgentVersionsResult {
  final String? agentId;
  final List<GetGenaiAgentVersionsAgentVersion>? agentVersions;
  final List<GetGenaiAgentVersionsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetGenaiAgentVersionsSort>? sorts;

  /// Creates a new [GetGenaiAgentVersionsResult].
  /// [agentId] Optional.
  /// [agentVersions] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  const GetGenaiAgentVersionsResult({
    this.agentId,
    this.agentVersions,
    this.filters,
    this.id,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'agentVersions': ?(() { final guardedValue = agentVersions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiAgentVersionsAgentVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiAgentVersionsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiAgentVersionsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGenaiAgentVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsResult(
      agentId: (() { final guardedValue = map['agentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      agentVersions: (() { final guardedValue = map['agentVersions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiAgentVersionsAgentVersion>(guardedValue, (value) => GetGenaiAgentVersionsAgentVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiAgentVersionsFilter>(guardedValue, (value) => GetGenaiAgentVersionsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiAgentVersionsSort>(guardedValue, (value) => GetGenaiAgentVersionsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
