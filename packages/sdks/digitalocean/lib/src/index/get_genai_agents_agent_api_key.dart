// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentsAgentApiKey {
  /// API Key value
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GetGenaiAgentsAgentApiKey].
  /// [apiKey] API Key value
  GetGenaiAgentsAgentApiKey({this.apiKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiKey': ?apiKey};
  }

  factory GetGenaiAgentsAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgentApiKey(
      apiKey: (() {
        final guardedValue = map['apiKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
