// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAgentSpec {
  /// The content of the Agent spec in the JSON format. This payload is validated against the schema for the specified type.
  final pulumi.Input<String?>? content;
  /// The type of the Agent spec content.
  /// Possible values are: `NO_SPEC`, `A2A_AGENT_CARD`.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceAgentSpec].
  /// [content] The content of the Agent spec in the JSON format. This payload is validated against the schema for the specified type.
  /// [type] The type of the Agent spec content.
  const ServiceAgentSpec({
    this.content,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'type': type,
    };
  }

  factory ServiceAgentSpec.fromMap(Map<String, dynamic> map) {
    return ServiceAgentSpec(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
