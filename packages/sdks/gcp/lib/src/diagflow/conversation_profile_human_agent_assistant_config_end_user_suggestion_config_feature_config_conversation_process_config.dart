// ignore_for_file: unused_element, unnecessary_cast


class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationProcessConfig {
  /// Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  final int? recentSentencesCount;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationProcessConfig].
  /// [recentSentencesCount] Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationProcessConfig({
    this.recentSentencesCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recentSentencesCount': ?recentSentencesCount,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationProcessConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationProcessConfig(
      recentSentencesCount: map['recentSentencesCount'] == null ? null : map['recentSentencesCount'] as int,
    );
  }
}

