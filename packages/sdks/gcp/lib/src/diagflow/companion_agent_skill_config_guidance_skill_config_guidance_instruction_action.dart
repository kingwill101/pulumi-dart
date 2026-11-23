// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionAction {
  /// Description of action item.
  final pulumi.Input<String> description;

  /// Creates a new [CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionAction].
  /// [description] Description of action item.
  const CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionAction({
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
    };
  }

  factory CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionAction.fromMap(Map<String, dynamic> map) {
    return CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionAction(
      description: pulumi.Input.fromValue(map['description'] as String),
    );
  }
}
