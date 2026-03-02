// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentsAgentParentAgentApiKey {
  /// API Key value
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GetGradientaiAgentsAgentParentAgentApiKey].
  /// [apiKey] API Key value
  GetGradientaiAgentsAgentParentAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGradientaiAgentsAgentParentAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgentParentAgentApiKey(
      apiKey: map['apiKey'] == null ? null : (map['apiKey']! as String).input(),
    );
  }
}

