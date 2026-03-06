// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Config to process conversation.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfigResponse {
  /// Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  final pulumi.Input<int> recentSentencesCount;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfigResponse].
  /// [recentSentencesCount] Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  const GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfigResponse({
    required this.recentSentencesCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recentSentencesCount': recentSentencesCount,
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfigResponse(
      recentSentencesCount: pulumi.Input.fromValue(map['recentSentencesCount'] as int),
    );
  }
}

