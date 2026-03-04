// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentsByOpenaiApiKeyAgentParentAgentApiKey {
  /// API Key value
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyAgentParentAgentApiKey].
  /// [apiKey] API Key value
  GetGenaiAgentsByOpenaiApiKeyAgentParentAgentApiKey({this.apiKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiKey': ?apiKey};
  }

  factory GetGenaiAgentsByOpenaiApiKeyAgentParentAgentApiKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGenaiAgentsByOpenaiApiKeyAgentParentAgentApiKey(
      apiKey: (() {
        final guardedValue = map['apiKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
