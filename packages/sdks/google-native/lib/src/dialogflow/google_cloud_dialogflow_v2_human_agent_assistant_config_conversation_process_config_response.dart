// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Config to process conversation.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse {
  /// Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  final pulumi.Input<int> recentSentencesCount;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse].
  /// [recentSentencesCount] Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  const GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse({
    required this.recentSentencesCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recentSentencesCount': recentSentencesCount,
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse(
      recentSentencesCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['recentSentencesCount'])),
    );
  }
}
