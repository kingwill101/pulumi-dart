// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_knowledge_bases_filter.dart';
import 'get_genai_knowledge_bases_sort.dart';

/// {@template pulumi_index_get_genai_knowledge_bases_get_genai_knowledge_bases_args_doc}
/// Arguments for getGenaiKnowledgeBases.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_knowledge_bases_get_genai_knowledge_bases_args_doc}
class GetGenaiKnowledgeBasesArgs {
  final pulumi.Input<List<GetGenaiKnowledgeBasesFilter>>? filters;
  final pulumi.Input<List<GetGenaiKnowledgeBasesSort>>? sorts;

  /// Creates a new [GetGenaiKnowledgeBasesArgs].
  /// [filters] Optional.
  /// [sorts] Optional.
  GetGenaiKnowledgeBasesArgs({
    pulumi.Output<List<GetGenaiKnowledgeBasesFilter>>? filters,
    pulumi.Output<List<GetGenaiKnowledgeBasesSort>>? sorts,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetGenaiKnowledgeBasesFilter>>(filters),
      sorts = pulumi.Input.asOptionalInput<List<GetGenaiKnowledgeBasesSort>>(sorts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiKnowledgeBasesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetGenaiKnowledgeBasesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sorts': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiKnowledgeBasesSort>, List<Map<String, dynamic>>>(sorts, (value) => pulumi.Input.encodeList<GetGenaiKnowledgeBasesSort, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGenaiKnowledgeBasesArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBasesArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetGenaiKnowledgeBasesFilter>>(pulumi.Input.decodeList<GetGenaiKnowledgeBasesFilter>(map['filters'], (value) => GetGenaiKnowledgeBasesFilter.fromMap((value as Map).cast<String, dynamic>()))),
      sorts: map['sorts'] == null ? null : pulumi.Output.create<List<GetGenaiKnowledgeBasesSort>>(pulumi.Input.decodeList<GetGenaiKnowledgeBasesSort>(map['sorts'], (value) => GetGenaiKnowledgeBasesSort.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

