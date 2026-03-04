// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_profile_human_agent_assistant_config_human_agent_suggestion_config_feature_config_query_config_dialogflow_query_source_human_agent_side_config.dart';

class ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource {
  /// he name of a Dialogflow virtual agent used for end user side intent detection and suggestion. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agent.
  final pulumi.Input<String> agent;

  /// The Dialogflow assist configuration for human agent.
  /// Structure is documented below.
  final pulumi.Input<
    ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig
  >?
  humanAgentSideConfig;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource].
  /// [agent] he name of a Dialogflow virtual agent used for end user side intent detection and suggestion. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agent.
  /// [humanAgentSideConfig] The Dialogflow assist configuration for human agent.
  ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource({
    required this.agent,
    this.humanAgentSideConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': agent,
      'humanAgentSideConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig,
            Map<String, dynamic>
          >(humanAgentSideConfig, (value) => value.toMap()),
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource(
      agent: pulumi.Input.fromValue(map['agent'] as String),
      humanAgentSideConfig: (() {
        final guardedValue = map['humanAgentSideConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
