// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentsAgentOpenAiApiKey {
  /// OpenAI API Key
  final pulumi.Input<String?>? apiKey;

  /// Creates a new [GetAgentPlatformAgentsAgentOpenAiApiKey].
  /// [apiKey] OpenAI API Key
  const GetAgentPlatformAgentsAgentOpenAiApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetAgentPlatformAgentsAgentOpenAiApiKey.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsAgentOpenAiApiKey(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
