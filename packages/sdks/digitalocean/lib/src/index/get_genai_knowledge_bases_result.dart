// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_knowledge_bases_filter.dart';
import 'get_genai_knowledge_bases_knowledge_base.dart';
import 'get_genai_knowledge_bases_sort.dart';

/// Result data returned by getGenaiKnowledgeBases.
class GetGenaiKnowledgeBasesResult {
  final List<GetGenaiKnowledgeBasesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGenaiKnowledgeBasesKnowledgeBase> knowledgeBases;
  final List<GetGenaiKnowledgeBasesSort>? sorts;

  /// Creates a new [GetGenaiKnowledgeBasesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [knowledgeBases] Required.
  /// [sorts] Optional.
  GetGenaiKnowledgeBasesResult({
    this.filters,
    required this.id,
    required this.knowledgeBases,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetGenaiKnowledgeBasesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'knowledgeBases': pulumi.Input.encodeList<GetGenaiKnowledgeBasesKnowledgeBase, Map<String, dynamic>>(knowledgeBases, (value) => value.toMap()),
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetGenaiKnowledgeBasesSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetGenaiKnowledgeBasesResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBasesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetGenaiKnowledgeBasesFilter>(map['filters'], (value) => GetGenaiKnowledgeBasesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      knowledgeBases: pulumi.Input.decodeList<GetGenaiKnowledgeBasesKnowledgeBase>(map['knowledgeBases'], (value) => GetGenaiKnowledgeBasesKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetGenaiKnowledgeBasesSort>(map['sorts'], (value) => GetGenaiKnowledgeBasesSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

