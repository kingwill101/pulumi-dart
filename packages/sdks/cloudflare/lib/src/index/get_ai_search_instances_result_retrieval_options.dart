// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instances_result_retrieval_options_boost_by.dart';

class GetAiSearchInstancesResultRetrievalOptions {
  /// Metadata fields to boost search results by. Each entry specifies a metadata field and an optional direction. Direction defaults to 'asc' for numeric/datetime fields and 'exists' for text/boolean fields. Fields must match 'timestamp' or a defined custom*metadata field.
  final pulumi.Input<List<GetAiSearchInstancesResultRetrievalOptionsBoostBy>> boostBies;
  /// Controls which documents are candidates for BM25 scoring. 'and' restricts candidates to documents containing all query terms; 'or' includes any document containing at least one term, ranked by BM25 relevance. Defaults to 'and'.
  /// Available values: "and", "or".
  final pulumi.Input<String> keywordMatchMode;

  /// Creates a new [GetAiSearchInstancesResultRetrievalOptions].
  /// [boostBies] Metadata fields to boost search results by. Each entry specifies a metadata field and an optional direction. Direction defaults to 'asc' for numeric/datetime fields and 'exists' for text/boolean fields. Fields must match 'timestamp' or a defined custom*metadata field.
  /// [keywordMatchMode] Controls which documents are candidates for BM25 scoring. 'and' restricts candidates to documents containing all query terms; 'or' includes any document containing at least one term, ranked by BM25 relevance. Defaults to 'and'.
  const GetAiSearchInstancesResultRetrievalOptions({
    required this.boostBies,
    required this.keywordMatchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boostBies': pulumi.Input.mapInputValue<List<GetAiSearchInstancesResultRetrievalOptionsBoostBy>, List<Map<String, dynamic>>>(boostBies, (value) => pulumi.Input.encodeList<GetAiSearchInstancesResultRetrievalOptionsBoostBy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keywordMatchMode': keywordMatchMode,
    };
  }

  factory GetAiSearchInstancesResultRetrievalOptions.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultRetrievalOptions(
      boostBies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAiSearchInstancesResultRetrievalOptionsBoostBy>(map['boostBies']!, (value) => GetAiSearchInstancesResultRetrievalOptionsBoostBy.fromMap((value as Map).cast<String, dynamic>()))),
      keywordMatchMode: pulumi.Input.fromValue(map['keywordMatchMode'] as String),
    );
  }
}
