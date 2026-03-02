// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentsAgentChildAgentApiKey {
  /// API Key value
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GetGradientaiAgentsAgentChildAgentApiKey].
  /// [apiKey] API Key value
  GetGradientaiAgentsAgentChildAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGradientaiAgentsAgentChildAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgentChildAgentApiKey(
      apiKey: map['apiKey'] == null ? null : (map['apiKey'] as String).input(),
    );
  }
}

