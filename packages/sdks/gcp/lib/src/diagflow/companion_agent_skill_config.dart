// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'companion_agent_skill_config_guidance_skill_config.dart';

class CompanionAgentSkillConfig {
  /// Guidance skill configuration.
  /// Structure is documented below.
  final pulumi.Input<CompanionAgentSkillConfigGuidanceSkillConfig?>? guidanceSkillConfig;
  /// The event that should trigger the skill.
  /// Possible values are: `END_OF_UTTERANCE`, `CUSTOMER_MESSAGE`, `AGENT_MESSAGE`.
  final pulumi.Input<String?>? skillTriggeringEvent;

  /// Creates a new [CompanionAgentSkillConfig].
  /// [guidanceSkillConfig] Guidance skill configuration.
  /// [skillTriggeringEvent] The event that should trigger the skill.
  const CompanionAgentSkillConfig({
    this.guidanceSkillConfig,
    this.skillTriggeringEvent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guidanceSkillConfig': ?pulumi.Input.mapOptionalInputValue<CompanionAgentSkillConfigGuidanceSkillConfig, Map<String, dynamic>>(guidanceSkillConfig, (value) => value.toMap()),
      'skillTriggeringEvent': ?skillTriggeringEvent,
    };
  }

  factory CompanionAgentSkillConfig.fromMap(Map<String, dynamic> map) {
    return CompanionAgentSkillConfig(
      guidanceSkillConfig: (() { final guardedValue = map['guidanceSkillConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompanionAgentSkillConfigGuidanceSkillConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skillTriggeringEvent: (() { final guardedValue = map['skillTriggeringEvent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
