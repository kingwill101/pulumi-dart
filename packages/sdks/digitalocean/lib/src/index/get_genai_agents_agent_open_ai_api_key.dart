// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentsAgentOpenAiApiKey {
  /// OpenAI API Key
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GetGenaiAgentsAgentOpenAiApiKey].
  /// [apiKey] OpenAI API Key
  GetGenaiAgentsAgentOpenAiApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGenaiAgentsAgentOpenAiApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgentOpenAiApiKey(
      apiKey: map['apiKey'] == null ? null : (map['apiKey']! as String).input(),
    );
  }
}

