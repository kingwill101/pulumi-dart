// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentsAgentOpenAiApiKey {
  /// OpenAI API Key
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GetGradientaiAgentsAgentOpenAiApiKey].
  /// [apiKey] OpenAI API Key
  GetGradientaiAgentsAgentOpenAiApiKey({this.apiKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiKey': ?apiKey};
  }

  factory GetGradientaiAgentsAgentOpenAiApiKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGradientaiAgentsAgentOpenAiApiKey(
      apiKey: (() {
        final guardedValue = map['apiKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
