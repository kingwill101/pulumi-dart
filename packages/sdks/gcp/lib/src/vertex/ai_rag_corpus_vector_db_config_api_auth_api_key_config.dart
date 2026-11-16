// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagCorpusVectorDbConfigApiAuthApiKeyConfig {
  /// The SecretManager secret version resource name storing API key.
  /// e.g. projects/{project}/secrets/{secret}/versions/{version}
  final pulumi.Input<String?>? apiKeySecretVersion;
  /// The API key string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? apiKeyString;

  /// Creates a new [AiRagCorpusVectorDbConfigApiAuthApiKeyConfig].
  /// [apiKeySecretVersion] The SecretManager secret version resource name storing API key.
  /// [apiKeyString] The API key string.
  const AiRagCorpusVectorDbConfigApiAuthApiKeyConfig({
    this.apiKeySecretVersion,
    this.apiKeyString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeySecretVersion': ?apiKeySecretVersion,
      'apiKeyString': ?apiKeyString,
    };
  }

  factory AiRagCorpusVectorDbConfigApiAuthApiKeyConfig.fromMap(Map<String, dynamic> map) {
    return AiRagCorpusVectorDbConfigApiAuthApiKeyConfig(
      apiKeySecretVersion: (() { final guardedValue = map['apiKeySecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyString: (() { final guardedValue = map['apiKeyString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
