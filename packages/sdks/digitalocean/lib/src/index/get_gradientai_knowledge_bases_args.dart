// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_knowledge_bases_filter.dart';
import 'get_gradientai_knowledge_bases_sort.dart';

/// {@template pulumi_index_get_gradientai_knowledge_bases_get_gradientai_knowledge_bases_args_doc}
/// Arguments for getGradientaiKnowledgeBases.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_knowledge_bases_get_gradientai_knowledge_bases_args_doc}
class GetGradientaiKnowledgeBasesArgs {
  final pulumi.Input<List<GetGradientaiKnowledgeBasesFilter>>? filters;
  final pulumi.Input<List<GetGradientaiKnowledgeBasesSort>>? sorts;

  /// Creates a new [GetGradientaiKnowledgeBasesArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  GetGradientaiKnowledgeBasesArgs({
    this.filters,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiKnowledgeBasesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGradientaiKnowledgeBasesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiKnowledgeBasesSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGradientaiKnowledgeBasesSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGradientaiKnowledgeBasesArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBasesArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetGradientaiKnowledgeBasesFilter>(map['filters']!, (value) => GetGradientaiKnowledgeBasesFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sorts: map['sorts'] == null ? null : (pulumi.Input.decodeList<GetGradientaiKnowledgeBasesSort>(map['sorts']!, (value) => GetGradientaiKnowledgeBasesSort.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

