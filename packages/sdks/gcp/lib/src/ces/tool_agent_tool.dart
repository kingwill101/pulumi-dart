// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolAgentTool {
  /// Optional. The resource name of the agent that is the entry point of the tool.
  /// Format: projects/{project}/locations/{location}/agents/{agent}
  final pulumi.Input<String>? agent;
  /// Optional. Description of the tool's purpose.
  final pulumi.Input<String>? description;
  /// Required. The name of the agent tool.
  final pulumi.Input<String> name;

  /// Creates a new [ToolAgentTool].
  /// [agent] Optional. The resource name of the agent that is the entry point of the tool.
  /// [description] Optional. Description of the tool's purpose.
  /// [name] Required. The name of the agent tool.
  const ToolAgentTool({
    this.agent,
    this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': ?agent,
      'description': ?description,
      'name': name,
    };
  }

  factory ToolAgentTool.fromMap(Map<String, dynamic> map) {
    return ToolAgentTool(
      agent: (() { final guardedValue = map['agent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
