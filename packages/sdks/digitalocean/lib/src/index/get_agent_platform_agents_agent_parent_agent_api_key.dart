// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformAgentsAgentParentAgentApiKey {
  /// API Key value
  final pulumi.Input<String?>? apiKey;

  /// Creates a new [GetAgentPlatformAgentsAgentParentAgentApiKey].
  /// [apiKey] API Key value
  const GetAgentPlatformAgentsAgentParentAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetAgentPlatformAgentsAgentParentAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsAgentParentAgentApiKey(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
