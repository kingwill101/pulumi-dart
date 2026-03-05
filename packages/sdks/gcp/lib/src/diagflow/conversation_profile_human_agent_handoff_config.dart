// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_profile_human_agent_handoff_config_live_person_config.dart';

class ConversationProfileHumanAgentHandoffConfig {
  /// Config for using LivePerson.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentHandoffConfigLivePersonConfig>? livePersonConfig;

  /// Creates a new [ConversationProfileHumanAgentHandoffConfig].
  /// [livePersonConfig] Config for using LivePerson.
  ConversationProfileHumanAgentHandoffConfig({
    this.livePersonConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livePersonConfig': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentHandoffConfigLivePersonConfig, Map<String, dynamic>>(livePersonConfig, (value) => value.toMap()),
    };
  }

  factory ConversationProfileHumanAgentHandoffConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentHandoffConfig(
      livePersonConfig: (() { final guardedValue = map['livePersonConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileHumanAgentHandoffConfigLivePersonConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

