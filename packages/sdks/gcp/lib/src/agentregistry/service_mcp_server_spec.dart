// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMcpServerSpec {
  /// The content of the MCP Server spec. This payload is validated against the schema for the specified type.
  final pulumi.Input<String?>? content;
  /// The type of the MCP Server spec content.
  /// Possible values are: `NO_SPEC`, `TOOL_SPEC`.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceMcpServerSpec].
  /// [content] The content of the MCP Server spec. This payload is validated against the schema for the specified type.
  /// [type] The type of the MCP Server spec content.
  const ServiceMcpServerSpec({
    this.content,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'type': type,
    };
  }

  factory ServiceMcpServerSpec.fromMap(Map<String, dynamic> map) {
    return ServiceMcpServerSpec(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
