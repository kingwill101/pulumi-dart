// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Config to process conversation.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfig {
  /// Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  final pulumi.Input<int>? recentSentencesCount;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfig].
  /// [recentSentencesCount] Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfig({
    this.recentSentencesCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recentSentencesCount': ?recentSentencesCount,
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfig(
      recentSentencesCount: map['recentSentencesCount'] == null ? null : (map['recentSentencesCount']! as int).input(),
    );
  }
}

