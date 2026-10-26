// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agent_versions_agent_version.dart';
import 'get_gradientai_agent_versions_filter.dart';
import 'get_gradientai_agent_versions_sort.dart';

/// Result data returned by getGradientaiAgentVersions.
class GetGradientaiAgentVersionsResult {
  final String? agentId;
  final List<GetGradientaiAgentVersionsAgentVersion>? agentVersions;
  final List<GetGradientaiAgentVersionsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetGradientaiAgentVersionsSort>? sorts;

  /// Creates a new [GetGradientaiAgentVersionsResult].
  /// [agentId] Optional.
  /// [agentVersions] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  const GetGradientaiAgentVersionsResult({
    this.agentId,
    this.agentVersions,
    this.filters,
    this.id,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'agentVersions': ?(() { final guardedValue = agentVersions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiAgentVersionsAgentVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiAgentVersionsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiAgentVersionsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGradientaiAgentVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentVersionsResult(
      agentId: (() { final guardedValue = map['agentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      agentVersions: (() { final guardedValue = map['agentVersions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiAgentVersionsAgentVersion>(guardedValue, (value) => GetGradientaiAgentVersionsAgentVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiAgentVersionsFilter>(guardedValue, (value) => GetGradientaiAgentVersionsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiAgentVersionsSort>(guardedValue, (value) => GetGradientaiAgentVersionsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
