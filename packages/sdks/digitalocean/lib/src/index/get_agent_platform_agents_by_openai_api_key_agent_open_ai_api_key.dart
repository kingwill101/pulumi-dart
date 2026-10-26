// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentsByOpenaiApiKeyAgentOpenAiApiKey {
  /// OpenAI API Key
  final pulumi.Input<String?>? apiKey;

  /// Creates a new [GetAgentPlatformAgentsByOpenaiApiKeyAgentOpenAiApiKey].
  /// [apiKey] OpenAI API Key
  const GetAgentPlatformAgentsByOpenaiApiKeyAgentOpenAiApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetAgentPlatformAgentsByOpenaiApiKeyAgentOpenAiApiKey.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsByOpenaiApiKeyAgentOpenAiApiKey(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
