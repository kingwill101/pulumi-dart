// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolRemoteAgentToolAgentCardSkill {
  /// (Output)
  /// The description of the system tool.
  final pulumi.Input<String>? description;
  /// (Output)
  /// Example prompts or scenarios that this skill can handle.
  final pulumi.Input<List<String>>? examples;
  /// (Output)
  /// A unique identifier for the agent's skill.
  final pulumi.Input<String>? id;
  /// (Output)
  /// The set of supported input media types for this skill, overriding the agent's
  /// defaults.
  final pulumi.Input<List<String>>? inputModes;
  /// (Output)
  /// The name of the system tool.
  final pulumi.Input<String>? name;
  /// (Output)
  /// The set of supported output media types for this skill, overriding the agent's
  /// defaults.
  final pulumi.Input<List<String>>? outputModes;
  /// (Output)
  /// A set of keywords describing the skill's capabilities.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [ToolRemoteAgentToolAgentCardSkill].
  /// [description] (Output)
  /// [examples] (Output)
  /// [id] (Output)
  /// [inputModes] (Output)
  /// [name] (Output)
  /// [outputModes] (Output)
  /// [tags] (Output)
  const ToolRemoteAgentToolAgentCardSkill({
    this.description,
    this.examples,
    this.id,
    this.inputModes,
    this.name,
    this.outputModes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'examples': ?examples,
      'id': ?id,
      'inputModes': ?inputModes,
      'name': ?name,
      'outputModes': ?outputModes,
      'tags': ?tags,
    };
  }

  factory ToolRemoteAgentToolAgentCardSkill.fromMap(Map<String, dynamic> map) {
    return ToolRemoteAgentToolAgentCardSkill(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      examples: (() { final guardedValue = map['examples']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputModes: (() { final guardedValue = map['inputModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputModes: (() { final guardedValue = map['outputModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
