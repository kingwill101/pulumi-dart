// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_skill_reference.dart';

class AnalystAgentPersonaSkill {
  /// The markdown text content of the skill.
  final pulumi.Input<String> content;
  /// The description of the skill.
  final pulumi.Input<String?>? description;
  /// References for the skill.
  final pulumi.Input<List<AnalystAgentPersonaSkillReference>?>? references;
  /// The identifier of the skill. Use a descriptive string that reflects the
  /// skill's function.
  final pulumi.Input<String> skillId;

  /// Creates a new [AnalystAgentPersonaSkill].
  /// [content] The markdown text content of the skill.
  /// [description] The description of the skill.
  /// [references] References for the skill.
  /// [skillId] The identifier of the skill. Use a descriptive string that reflects the
  const AnalystAgentPersonaSkill({
    required this.content,
    this.description,
    this.references,
    required this.skillId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'description': ?description,
      'references': ?pulumi.Input.mapOptionalInputValue<List<AnalystAgentPersonaSkillReference>, List<Map<String, dynamic>>>(references, (value) => pulumi.Input.encodeList<AnalystAgentPersonaSkillReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'skillId': skillId,
    };
  }

  factory AnalystAgentPersonaSkill.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaSkill(
      content: pulumi.Input.fromValue(map['content'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      references: (() { final guardedValue = map['references']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnalystAgentPersonaSkillReference>(guardedValue, (value) => AnalystAgentPersonaSkillReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      skillId: pulumi.Input.fromValue(map['skillId'] as String),
    );
  }
}
