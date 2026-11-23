// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'companion_agent_skill_config_guidance_skill_config_guidance_instruction_action.dart';

class CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstruction {
  /// The action items that can be processed.
  /// Structure is documented below.
  final pulumi.Input<List<CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionAction>?>? actions;
  /// The condition of the instruction.
  final pulumi.Input<String?>? condition;
  /// Whether to disable suggested reply generation for this instruction.
  final pulumi.Input<bool?>? disableSuggestedReply;
  /// The detailed description of this instruction.
  final pulumi.Input<String?>? displayDetails;
  /// Display name for the instruction.
  final pulumi.Input<String?>? displayName;
  /// Event that triggers the guidance instruction.
  /// Possible values are: `END_OF_UTTERANCE`, `CUSTOMER_MESSAGE`, `AGENT_MESSAGE`.
  final pulumi.Input<String?>? triggerEvent;

  /// Creates a new [CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstruction].
  /// [actions] The action items that can be processed.
  /// [condition] The condition of the instruction.
  /// [disableSuggestedReply] Whether to disable suggested reply generation for this instruction.
  /// [displayDetails] The detailed description of this instruction.
  /// [displayName] Display name for the instruction.
  /// [triggerEvent] Event that triggers the guidance instruction.
  const CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstruction({
    this.actions,
    this.condition,
    this.disableSuggestedReply,
    this.displayDetails,
    this.displayName,
    this.triggerEvent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'condition': ?condition,
      'disableSuggestedReply': ?disableSuggestedReply,
      'displayDetails': ?displayDetails,
      'displayName': ?displayName,
      'triggerEvent': ?triggerEvent,
    };
  }

  factory CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstruction.fromMap(Map<String, dynamic> map) {
    return CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstruction(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionAction>(guardedValue, (value) => CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstructionAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableSuggestedReply: (() { final guardedValue = map['disableSuggestedReply']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayDetails: (() { final guardedValue = map['displayDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerEvent: (() { final guardedValue = map['triggerEvent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
