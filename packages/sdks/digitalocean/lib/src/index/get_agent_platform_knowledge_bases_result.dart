// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_knowledge_bases_filter.dart';
import 'get_agent_platform_knowledge_bases_knowledge_base.dart';
import 'get_agent_platform_knowledge_bases_sort.dart';

/// Result data returned by getAgentPlatformKnowledgeBases.
class GetAgentPlatformKnowledgeBasesResult {
  final List<GetAgentPlatformKnowledgeBasesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetAgentPlatformKnowledgeBasesKnowledgeBase>? knowledgeBases;
  final List<GetAgentPlatformKnowledgeBasesSort>? sorts;

  /// Creates a new [GetAgentPlatformKnowledgeBasesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [knowledgeBases] Optional.
  /// [sorts] Optional.
  const GetAgentPlatformKnowledgeBasesResult({
    this.filters,
    this.id,
    this.knowledgeBases,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformKnowledgeBasesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'knowledgeBases': ?(() { final guardedValue = knowledgeBases; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformKnowledgeBasesKnowledgeBase, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformKnowledgeBasesSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAgentPlatformKnowledgeBasesResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformKnowledgeBasesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformKnowledgeBasesFilter>(guardedValue, (value) => GetAgentPlatformKnowledgeBasesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      knowledgeBases: (() { final guardedValue = map['knowledgeBases']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformKnowledgeBasesKnowledgeBase>(guardedValue, (value) => GetAgentPlatformKnowledgeBasesKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformKnowledgeBasesSort>(guardedValue, (value) => GetAgentPlatformKnowledgeBasesSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
