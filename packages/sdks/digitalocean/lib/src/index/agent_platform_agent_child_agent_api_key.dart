// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPlatformAgentChildAgentApiKey {
  /// API Key value
  final pulumi.Input<String?>? apiKey;

  /// Creates a new [AgentPlatformAgentChildAgentApiKey].
  /// [apiKey] API Key value
  const AgentPlatformAgentChildAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory AgentPlatformAgentChildAgentApiKey.fromMap(Map<String, dynamic> map) {
    return AgentPlatformAgentChildAgentApiKey(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
