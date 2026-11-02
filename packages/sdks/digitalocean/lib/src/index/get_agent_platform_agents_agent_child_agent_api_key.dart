// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentsAgentChildAgentApiKey {
  /// API Key value
  final pulumi.Input<String?>? apiKey;

  /// Creates a new [GetAgentPlatformAgentsAgentChildAgentApiKey].
  /// [apiKey] API Key value
  const GetAgentPlatformAgentsAgentChildAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetAgentPlatformAgentsAgentChildAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsAgentChildAgentApiKey(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
