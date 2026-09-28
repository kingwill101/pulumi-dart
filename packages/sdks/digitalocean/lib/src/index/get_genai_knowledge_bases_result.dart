// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_knowledge_bases_filter.dart';
import 'get_genai_knowledge_bases_knowledge_base.dart';
import 'get_genai_knowledge_bases_sort.dart';

/// Result data returned by getGenaiKnowledgeBases.
class GetGenaiKnowledgeBasesResult {
  final List<GetGenaiKnowledgeBasesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetGenaiKnowledgeBasesKnowledgeBase>? knowledgeBases;
  final List<GetGenaiKnowledgeBasesSort>? sorts;

  /// Creates a new [GetGenaiKnowledgeBasesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [knowledgeBases] Optional.
  /// [sorts] Optional.
  const GetGenaiKnowledgeBasesResult({
    this.filters,
    this.id,
    this.knowledgeBases,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiKnowledgeBasesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'knowledgeBases': ?(() { final guardedValue = knowledgeBases; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiKnowledgeBasesKnowledgeBase, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiKnowledgeBasesSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGenaiKnowledgeBasesResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBasesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiKnowledgeBasesFilter>(guardedValue, (value) => GetGenaiKnowledgeBasesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      knowledgeBases: (() { final guardedValue = map['knowledgeBases']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiKnowledgeBasesKnowledgeBase>(guardedValue, (value) => GetGenaiKnowledgeBasesKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiKnowledgeBasesSort>(guardedValue, (value) => GetGenaiKnowledgeBasesSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
