// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_knowledge_bases_filter.dart';
import 'get_agent_platform_knowledge_bases_sort.dart';

/// {@template pulumi_index_get_agent_platform_knowledge_bases_get_agent_platform_knowledge_bases_args_doc}
/// Arguments for getAgentPlatformKnowledgeBases.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_knowledge_bases_get_agent_platform_knowledge_bases_args_doc}
class GetAgentPlatformKnowledgeBasesArgs {
  final pulumi.Input<List<GetAgentPlatformKnowledgeBasesFilter>?>? filters;
  final pulumi.Input<List<GetAgentPlatformKnowledgeBasesSort>?>? sorts;

  /// Creates a new [GetAgentPlatformKnowledgeBasesArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  const GetAgentPlatformKnowledgeBasesArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformKnowledgeBasesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetAgentPlatformKnowledgeBasesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformKnowledgeBasesSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetAgentPlatformKnowledgeBasesSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAgentPlatformKnowledgeBasesArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformKnowledgeBasesArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformKnowledgeBasesFilter>(guardedValue, (value) => GetAgentPlatformKnowledgeBasesFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformKnowledgeBasesSort>(guardedValue, (value) => GetAgentPlatformKnowledgeBasesSort.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
