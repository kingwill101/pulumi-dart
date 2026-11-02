// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentsByOpenaiApiKeyAgentApiKey {
  /// API Key value
  final pulumi.Input<String?>? apiKey;

  /// Creates a new [GetAgentPlatformAgentsByOpenaiApiKeyAgentApiKey].
  /// [apiKey] API Key value
  const GetAgentPlatformAgentsByOpenaiApiKeyAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetAgentPlatformAgentsByOpenaiApiKeyAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsByOpenaiApiKeyAgentApiKey(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
