// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagCorpusVectorDbConfigPinecone {
  /// Pinecone index name. This value cannot be changed after it's set.
  final pulumi.Input<String> indexName;

  /// Creates a new [AiRagCorpusVectorDbConfigPinecone].
  /// [indexName] Pinecone index name. This value cannot be changed after it's set.
  const AiRagCorpusVectorDbConfigPinecone({
    required this.indexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': indexName,
    };
  }

  factory AiRagCorpusVectorDbConfigPinecone.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusVectorDbConfigPinecone(
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
    );
  }
}
