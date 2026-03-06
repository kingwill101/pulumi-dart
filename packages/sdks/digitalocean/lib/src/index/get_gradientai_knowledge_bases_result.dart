// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_knowledge_bases_filter.dart';
import 'get_gradientai_knowledge_bases_knowledge_base.dart';
import 'get_gradientai_knowledge_bases_sort.dart';

/// Result data returned by getGradientaiKnowledgeBases.
class GetGradientaiKnowledgeBasesResult {
  final List<GetGradientaiKnowledgeBasesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGradientaiKnowledgeBasesKnowledgeBase> knowledgeBases;
  final List<GetGradientaiKnowledgeBasesSort>? sorts;

  /// Creates a new [GetGradientaiKnowledgeBasesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [knowledgeBases] Required.
  /// [sorts] Optional.
  const GetGradientaiKnowledgeBasesResult({
    this.filters,
    required this.id,
    required this.knowledgeBases,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiKnowledgeBasesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'knowledgeBases': pulumi.Input.encodeList<GetGradientaiKnowledgeBasesKnowledgeBase, Map<String, dynamic>>(knowledgeBases, (value) => value.toMap()),
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGradientaiKnowledgeBasesSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGradientaiKnowledgeBasesResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBasesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiKnowledgeBasesFilter>(guardedValue, (value) => GetGradientaiKnowledgeBasesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      knowledgeBases: pulumi.Input.decodeList<GetGradientaiKnowledgeBasesKnowledgeBase>(map['knowledgeBases']!, (value) => GetGradientaiKnowledgeBasesKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGradientaiKnowledgeBasesSort>(guardedValue, (value) => GetGradientaiKnowledgeBasesSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

