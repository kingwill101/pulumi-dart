// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentChildAgentApiKey {
  /// API Key value
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GetGradientaiAgentChildAgentApiKey].
  /// [apiKey] API Key value
  GetGradientaiAgentChildAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGradientaiAgentChildAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentChildAgentApiKey(
      apiKey: map['apiKey'] == null ? null : (map['apiKey']! as String).input(),
    );
  }
}

