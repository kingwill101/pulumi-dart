// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_corpus_vector_db_config_api_auth_api_key_config.dart';

class AiRagCorpusVectorDbConfigApiAuth {
  /// The API secret.
  /// Structure is documented below.
  final pulumi.Input<AiRagCorpusVectorDbConfigApiAuthApiKeyConfig?>? apiKeyConfig;

  /// Creates a new [AiRagCorpusVectorDbConfigApiAuth].
  /// [apiKeyConfig] The API secret.
  const AiRagCorpusVectorDbConfigApiAuth({
    this.apiKeyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfig': ?pulumi.Input.mapOptionalInputValue<AiRagCorpusVectorDbConfigApiAuthApiKeyConfig, Map<String, dynamic>>(apiKeyConfig, (value) => value.toMap()),
    };
  }

  factory AiRagCorpusVectorDbConfigApiAuth.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusVectorDbConfigApiAuth(
      apiKeyConfig: (() { final guardedValue = map['apiKeyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagCorpusVectorDbConfigApiAuthApiKeyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
