// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentChildAgentApiKey {
  /// API Key value
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GetGenaiAgentChildAgentApiKey].
  /// [apiKey] API Key value
  GetGenaiAgentChildAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGenaiAgentChildAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentChildAgentApiKey(
      apiKey: map['apiKey'] == null ? null : (map['apiKey'] as String).input(),
    );
  }
}

