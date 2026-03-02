// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GenaiAgentParentAgentApiKey {
  /// API Key value
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GenaiAgentParentAgentApiKey].
  /// [apiKey] API Key value
  GenaiAgentParentAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GenaiAgentParentAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GenaiAgentParentAgentApiKey(
      apiKey: map['apiKey'] == null ? null : (map['apiKey']! as String).input(),
    );
  }
}

