// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigConversationProcessConfig {
  /// Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  final pulumi.Input<int>? recentSentencesCount;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigConversationProcessConfig].
  /// [recentSentencesCount] Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigConversationProcessConfig({
    this.recentSentencesCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recentSentencesCount': ?recentSentencesCount,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigConversationProcessConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigConversationProcessConfig(
      recentSentencesCount: map['recentSentencesCount'] == null ? null : (map['recentSentencesCount']! as int).input(),
    );
  }
}

