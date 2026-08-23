// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaSkillReference {
  /// The content of the reference.
  final pulumi.Input<String> content;
  /// The identifier of the reference within the skill. Use a descriptive
  /// string that reflects the reference's function.
  final pulumi.Input<String> referenceId;

  /// Creates a new [AnalystAgentPersonaSkillReference].
  /// [content] The content of the reference.
  /// [referenceId] The identifier of the reference within the skill. Use a descriptive
  const AnalystAgentPersonaSkillReference({
    required this.content,
    required this.referenceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'referenceId': referenceId,
    };
  }

  factory AnalystAgentPersonaSkillReference.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaSkillReference(
      content: pulumi.Input.fromValue(map['content'] as String),
      referenceId: pulumi.Input.fromValue(map['referenceId'] as String),
    );
  }
}
