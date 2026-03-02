// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentsAgentApiKey {
  /// API Key value
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GetGradientaiAgentsAgentApiKey].
  /// [apiKey] API Key value
  GetGradientaiAgentsAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGradientaiAgentsAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgentApiKey(
      apiKey: map['apiKey'] == null ? null : (map['apiKey']! as String).input(),
    );
  }
}

