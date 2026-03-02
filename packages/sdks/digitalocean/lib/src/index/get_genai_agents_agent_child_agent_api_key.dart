// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentsAgentChildAgentApiKey {
  /// API Key value
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GetGenaiAgentsAgentChildAgentApiKey].
  /// [apiKey] API Key value
  GetGenaiAgentsAgentChildAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGenaiAgentsAgentChildAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgentChildAgentApiKey(
      apiKey: map['apiKey'] == null ? null : (map['apiKey'] as String).input(),
    );
  }
}

