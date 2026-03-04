// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GradientaiAgentParentAgentApiKey {
  /// API Key value
  final pulumi.Input<String>? apiKey;

  /// Creates a new [GradientaiAgentParentAgentApiKey].
  /// [apiKey] API Key value
  GradientaiAgentParentAgentApiKey({this.apiKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiKey': ?apiKey};
  }

  factory GradientaiAgentParentAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentParentAgentApiKey(
      apiKey: (() {
        final guardedValue = map['apiKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
