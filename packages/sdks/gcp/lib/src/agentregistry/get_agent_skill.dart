// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentSkill {
  /// A more detailed description of the skill.
  final pulumi.Input<String> description;
  /// Example prompts or scenarios that this skill can handle. Provides a hint to the client on how to use the skill. Example: [["I need a recipe for bread"]]
  final pulumi.Input<List<String>> examples;
  /// A unique identifier for the Agent's skill.
  final pulumi.Input<String> id;
  /// A human readable name for the Agent's skill.
  final pulumi.Input<String> name;
  /// A set of keywords describing the skills.  Example:  [["cooking", "customer support", "billing"]]
  final pulumi.Input<List<String>> tags;

  /// Creates a new [GetAgentSkill].
  /// [description] A more detailed description of the skill.
  /// [examples] Example prompts or scenarios that this skill can handle. Provides a hint to the client on how to use the skill. Example: [["I need a recipe for bread"]]
  /// [id] A unique identifier for the Agent's skill.
  /// [name] A human readable name for the Agent's skill.
  /// [tags] A set of keywords describing the skills.  Example:  [["cooking", "customer support", "billing"]]
  const GetAgentSkill({
    required this.description,
    required this.examples,
    required this.id,
    required this.name,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'examples': examples,
      'id': id,
      'name': name,
      'tags': tags,
    };
  }

  factory GetAgentSkill.fromMap(Map<String, dynamic> map) {
    return GetAgentSkill(
      description: pulumi.Input.fromValue(map['description'] as String),
      examples: pulumi.Input.fromValue((map['examples'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
    );
  }
}
