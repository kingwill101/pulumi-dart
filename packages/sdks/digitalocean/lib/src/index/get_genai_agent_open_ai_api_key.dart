// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentOpenAiApiKey {
  /// OpenAI API Key
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GetGenaiAgentOpenAiApiKey].
  /// [apiKey] OpenAI API Key
  GetGenaiAgentOpenAiApiKey({this.apiKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiKey': ?apiKey};
  }

  factory GetGenaiAgentOpenAiApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentOpenAiApiKey(
      apiKey: (() {
        final guardedValue = map['apiKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
