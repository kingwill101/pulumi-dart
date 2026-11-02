// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_agent_versions_agent_version.dart';
import 'get_agent_platform_agent_versions_filter.dart';
import 'get_agent_platform_agent_versions_sort.dart';

/// Result data returned by getAgentPlatformAgentVersions.
class GetAgentPlatformAgentVersionsResult {
  final String? agentId;
  final List<GetAgentPlatformAgentVersionsAgentVersion>? agentVersions;
  final List<GetAgentPlatformAgentVersionsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetAgentPlatformAgentVersionsSort>? sorts;

  /// Creates a new [GetAgentPlatformAgentVersionsResult].
  /// [agentId] Optional.
  /// [agentVersions] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  const GetAgentPlatformAgentVersionsResult({
    this.agentId,
    this.agentVersions,
    this.filters,
    this.id,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'agentVersions': ?(() { final guardedValue = agentVersions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentVersionsAgentVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentVersionsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentVersionsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAgentPlatformAgentVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentVersionsResult(
      agentId: (() { final guardedValue = map['agentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      agentVersions: (() { final guardedValue = map['agentVersions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentVersionsAgentVersion>(guardedValue, (value) => GetAgentPlatformAgentVersionsAgentVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentVersionsFilter>(guardedValue, (value) => GetAgentPlatformAgentVersionsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentVersionsSort>(guardedValue, (value) => GetAgentPlatformAgentVersionsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
