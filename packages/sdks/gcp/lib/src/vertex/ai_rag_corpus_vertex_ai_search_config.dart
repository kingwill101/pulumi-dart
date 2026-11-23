// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagCorpusVertexAiSearchConfig {
  /// Vertex AI Search Serving Config resource full name. For example,
  /// projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/servingConfigs/{serving_config}
  /// or
  /// projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/servingConfigs/{serving_config}.
  final pulumi.Input<String> servingConfig;

  /// Creates a new [AiRagCorpusVertexAiSearchConfig].
  /// [servingConfig] Vertex AI Search Serving Config resource full name. For example,
  const AiRagCorpusVertexAiSearchConfig({
    required this.servingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'servingConfig': servingConfig,
    };
  }

  factory AiRagCorpusVertexAiSearchConfig.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusVertexAiSearchConfig(
      servingConfig: pulumi.Input.fromValue(map['servingConfig'] as String),
    );
  }
}
