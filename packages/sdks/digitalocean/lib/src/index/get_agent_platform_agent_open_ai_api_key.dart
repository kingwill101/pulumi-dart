// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentOpenAiApiKey {
  /// OpenAI API Key
  final pulumi.Input<String?>? apiKey;

  /// Creates a new [GetAgentPlatformAgentOpenAiApiKey].
  /// [apiKey] OpenAI API Key
  const GetAgentPlatformAgentOpenAiApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetAgentPlatformAgentOpenAiApiKey.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentOpenAiApiKey(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
