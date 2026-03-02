// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey {
  /// OpenAI API Key
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey].
  /// [apiKey] OpenAI API Key
  GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey(
      apiKey: map['apiKey'] == null ? null : (map['apiKey'] as String).input(),
    );
  }
}

