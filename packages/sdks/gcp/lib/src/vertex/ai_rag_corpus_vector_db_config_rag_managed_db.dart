// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_corpus_vector_db_config_rag_managed_db_ann.dart';

class AiRagCorpusVectorDbConfigRagManagedDb {
  /// Performs an ANN search on RagCorpus.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusVectorDbConfigRagManagedDbAnn?>? ann;
  /// Performs a KNN search on RagCorpus. This is the default choice if not specified.
  final pulumi.Input<Map<String, dynamic>?>? knn;

  /// Creates a new [AiRagCorpusVectorDbConfigRagManagedDb].
  /// [ann] Performs an ANN search on RagCorpus.
  /// [knn] Performs a KNN search on RagCorpus. This is the default choice if not specified.
  const AiRagCorpusVectorDbConfigRagManagedDb({
    this.ann,
    this.knn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ann': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusVectorDbConfigRagManagedDbAnn, Map<String, dynamic>>(ann, (value) => value.toMap()),
      'knn': ?knn,
    };
  }

  factory AiRagCorpusVectorDbConfigRagManagedDb.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusVectorDbConfigRagManagedDb(
      ann: (() { final guardedValue = map['ann']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusVectorDbConfigRagManagedDbAnn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      knn: (() { final guardedValue = map['knn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
