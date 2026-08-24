// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instance_retrieval_options_boost_by.dart';

class GetAiSearchInstanceRetrievalOptions {
  /// Metadata fields to boost search results by. Each entry specifies a metadata field and an optional direction. Direction defaults to 'asc' for numeric/datetime fields and 'exists' for text/boolean fields. Fields must match 'timestamp' or a defined custom*metadata field.
  final pulumi.Input<List<GetAiSearchInstanceRetrievalOptionsBoostBy>> boostBies;
  /// Controls which documents are candidates for BM25 scoring. 'and' restricts candidates to documents containing all query terms; 'or' includes any document containing at least one term, ranked by BM25 relevance. Defaults to 'and'.
  /// Available values: "and", "or".
  final pulumi.Input<String> keywordMatchMode;

  /// Creates a new [GetAiSearchInstanceRetrievalOptions].
  /// [boostBies] Metadata fields to boost search results by. Each entry specifies a metadata field and an optional direction. Direction defaults to 'asc' for numeric/datetime fields and 'exists' for text/boolean fields. Fields must match 'timestamp' or a defined custom*metadata field.
  /// [keywordMatchMode] Controls which documents are candidates for BM25 scoring. 'and' restricts candidates to documents containing all query terms; 'or' includes any document containing at least one term, ranked by BM25 relevance. Defaults to 'and'.
  const GetAiSearchInstanceRetrievalOptions({
    required this.boostBies,
    required this.keywordMatchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boostBies': pulumi.Input.mapInputValue<List<GetAiSearchInstanceRetrievalOptionsBoostBy>, List<Map<String, dynamic>>>(boostBies, (value) => pulumi.Input.encodeList<GetAiSearchInstanceRetrievalOptionsBoostBy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keywordMatchMode': keywordMatchMode,
    };
  }

  factory GetAiSearchInstanceRetrievalOptions.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceRetrievalOptions(
      boostBies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAiSearchInstanceRetrievalOptionsBoostBy>(map['boostBies']!, (value) => GetAiSearchInstanceRetrievalOptionsBoostBy.fromMap((value as Map).cast<String, dynamic>()))),
      keywordMatchMode: pulumi.Input.fromValue(map['keywordMatchMode'] as String),
    );
  }
}
