// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'companion_agent_skill_config_guidance_skill_config_guidance_instruction.dart';

class CompanionAgentSkillConfigGuidanceSkillConfig {
  /// Customized instructions for guidance.
  /// Structure is documented below.
  final pulumi.Input<List<CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstruction>?>? guidanceInstructions;
  /// This is specific additional guidance that can be configured by the user.
  final pulumi.Input<String?>? overarchingGuidance;

  /// Creates a new [CompanionAgentSkillConfigGuidanceSkillConfig].
  /// [guidanceInstructions] Customized instructions for guidance.
  /// [overarchingGuidance] This is specific additional guidance that can be configured by the user.
  const CompanionAgentSkillConfigGuidanceSkillConfig({
    this.guidanceInstructions,
    this.overarchingGuidance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guidanceInstructions': ?pulumi.Input.mapOptionalInputValue<List<CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstruction>, List<Map<String, dynamic>>>(guidanceInstructions, (value) => pulumi.Input.encodeList<CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstruction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'overarchingGuidance': ?overarchingGuidance,
    };
  }

  factory CompanionAgentSkillConfigGuidanceSkillConfig.fromMap(Map<String, dynamic> map) {
    return CompanionAgentSkillConfigGuidanceSkillConfig(
      guidanceInstructions: (() { final guardedValue = map['guidanceInstructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstruction>(guardedValue, (value) => CompanionAgentSkillConfigGuidanceSkillConfigGuidanceInstruction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      overarchingGuidance: (() { final guardedValue = map['overarchingGuidance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
