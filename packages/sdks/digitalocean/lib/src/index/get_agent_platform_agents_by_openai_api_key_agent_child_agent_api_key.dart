// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKey {
  /// API Key value
  final pulumi.Input<String?>? apiKey;

  /// Creates a new [GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKey].
  /// [apiKey] API Key value
  const GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsByOpenaiApiKeyAgentChildAgentApiKey(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
