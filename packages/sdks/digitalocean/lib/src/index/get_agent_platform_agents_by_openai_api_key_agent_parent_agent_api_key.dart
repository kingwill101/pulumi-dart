// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentsByOpenaiApiKeyAgentParentAgentApiKey {
  /// API Key value
  final pulumi.Input<String?>? apiKey;

  /// Creates a new [GetAgentPlatformAgentsByOpenaiApiKeyAgentParentAgentApiKey].
  /// [apiKey] API Key value
  const GetAgentPlatformAgentsByOpenaiApiKeyAgentParentAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetAgentPlatformAgentsByOpenaiApiKeyAgentParentAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsByOpenaiApiKeyAgentParentAgentApiKey(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
