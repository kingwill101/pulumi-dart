// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagCorpusVectorDbConfigVertexVectorSearch {
  /// The resource name of the Index.
  /// Format: projects/{project}/locations/{location}/indexes/{index}
  final pulumi.Input<String> index;
  /// The resource name of the Index Endpoint.
  /// Format: projects/{project}/locations/{location}/indexEndpoints/{index_endpoint}
  final pulumi.Input<String> indexEndpoint;

  /// Creates a new [AiRagCorpusVectorDbConfigVertexVectorSearch].
  /// [index] The resource name of the Index.
  /// [indexEndpoint] The resource name of the Index Endpoint.
  const AiRagCorpusVectorDbConfigVertexVectorSearch({
    required this.index,
    required this.indexEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'index': index,
      'indexEndpoint': indexEndpoint,
    };
  }

  factory AiRagCorpusVectorDbConfigVertexVectorSearch.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusVectorDbConfigVertexVectorSearch(
      index: pulumi.Input.fromValue(map['index'] as String),
      indexEndpoint: pulumi.Input.fromValue(map['indexEndpoint'] as String),
    );
  }
}
