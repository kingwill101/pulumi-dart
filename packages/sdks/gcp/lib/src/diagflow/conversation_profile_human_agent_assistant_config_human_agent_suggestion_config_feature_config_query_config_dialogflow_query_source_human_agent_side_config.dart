// ignore_for_file: unused_element, unnecessary_cast


class ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig {
  /// The name of a dialogflow virtual agent used for intent detection and suggestion triggered by human agent. Format: projects/<Project ID>/locations/<Location ID>/agent.
  final String? agent;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig].
  /// [agent] The name of a dialogflow virtual agent used for intent detection and suggestion triggered by human agent. Format: projects/<Project ID>/locations/<Location ID>/agent.
  ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig({
    this.agent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': ?agent,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig(
      agent: map['agent'] == null ? null : map['agent'] as String,
    );
  }
}

