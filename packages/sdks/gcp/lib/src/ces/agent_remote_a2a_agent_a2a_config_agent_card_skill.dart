// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentRemoteA2aAgentA2aConfigAgentCardSkill {
  /// A detailed description of the skill.
  final pulumi.Input<String> description;
  /// Example prompts or scenarios that this skill can handle.
  final pulumi.Input<List<String>?>? examples;
  /// A unique identifier for the agent's skill.
  final pulumi.Input<String> id;
  /// The set of supported input media types for this skill, overriding the
  /// agent's defaults.
  final pulumi.Input<List<String>?>? inputModes;
  /// A human-readable name for the skill.
  final pulumi.Input<String> name;
  /// The set of supported output media types for this skill, overriding the
  /// agent's defaults.
  final pulumi.Input<List<String>?>? outputModes;
  /// A set of keywords describing the skill's capabilities.
  final pulumi.Input<List<String>> tags;

  /// Creates a new [AgentRemoteA2aAgentA2aConfigAgentCardSkill].
  /// [description] A detailed description of the skill.
  /// [examples] Example prompts or scenarios that this skill can handle.
  /// [id] A unique identifier for the agent's skill.
  /// [inputModes] The set of supported input media types for this skill, overriding the
  /// [name] A human-readable name for the skill.
  /// [outputModes] The set of supported output media types for this skill, overriding the
  /// [tags] A set of keywords describing the skill's capabilities.
  const AgentRemoteA2aAgentA2aConfigAgentCardSkill({
    required this.description,
    this.examples,
    required this.id,
    this.inputModes,
    required this.name,
    this.outputModes,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'examples': ?examples,
      'id': id,
      'inputModes': ?inputModes,
      'name': name,
      'outputModes': ?outputModes,
      'tags': tags,
    };
  }

  factory AgentRemoteA2aAgentA2aConfigAgentCardSkill.fromMap(Map<String, dynamic> map) {
    return AgentRemoteA2aAgentA2aConfigAgentCardSkill(
      description: pulumi.Input.fromValue(map['description'] as String),
      examples: (() { final guardedValue = map['examples']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      inputModes: (() { final guardedValue = map['inputModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      outputModes: (() { final guardedValue = map['outputModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
    );
  }
}
