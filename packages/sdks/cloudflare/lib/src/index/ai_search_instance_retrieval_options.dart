// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_instance_retrieval_options_boost_by.dart';

class AiSearchInstanceRetrievalOptions {
  /// Metadata fields to boost search results by. Each entry specifies a metadata field and an optional direction. Direction defaults to 'asc' for numeric/datetime fields and 'exists' for text/boolean fields. Fields must match 'timestamp' or a defined custom*metadata field.
  final pulumi.Input<List<AiSearchInstanceRetrievalOptionsBoostBy>?>? boostBies;
  /// Controls which documents are candidates for BM25 scoring. 'and' restricts candidates to documents containing all query terms; 'or' includes any document containing at least one term, ranked by BM25 relevance. When omitted on an update, the existing stored value is preserved; when never set, search falls back to 'and'.
  /// Available values: "and", "or".
  final pulumi.Input<String?>? keywordMatchMode;

  /// Creates a new [AiSearchInstanceRetrievalOptions].
  /// [boostBies] Metadata fields to boost search results by. Each entry specifies a metadata field and an optional direction. Direction defaults to 'asc' for numeric/datetime fields and 'exists' for text/boolean fields. Fields must match 'timestamp' or a defined custom*metadata field.
  /// [keywordMatchMode] Controls which documents are candidates for BM25 scoring. 'and' restricts candidates to documents containing all query terms; 'or' includes any document containing at least one term, ranked by BM25 relevance. When omitted on an update, the existing stored value is preserved; when never set, search falls back to 'and'.
  const AiSearchInstanceRetrievalOptions({
    this.boostBies,
    this.keywordMatchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boostBies': ?pulumi.Input.mapOptionalInputValue<List<AiSearchInstanceRetrievalOptionsBoostBy>, List<Map<String, dynamic>>>(boostBies, (value) => pulumi.Input.encodeList<AiSearchInstanceRetrievalOptionsBoostBy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keywordMatchMode': ?keywordMatchMode,
    };
  }

  factory AiSearchInstanceRetrievalOptions.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceRetrievalOptions(
      boostBies: (() { final guardedValue = map['boostBies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiSearchInstanceRetrievalOptionsBoostBy>(guardedValue, (value) => AiSearchInstanceRetrievalOptionsBoostBy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      keywordMatchMode: (() { final guardedValue = map['keywordMatchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
