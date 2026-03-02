// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for analyses to run on each conversation message.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigMessageAnalysisConfigResponse {
  /// Enable entity extraction in conversation messages on [agent assist stage](https://cloud.google.com/dialogflow/priv/docs/contact-center/basics#stages). If unspecified, defaults to false. Currently, this feature is not general available, please contact Google to get access.
  final pulumi.Input<bool> enableEntityExtraction;
  /// Enable sentiment analysis in conversation messages on [agent assist stage](https://cloud.google.com/dialogflow/priv/docs/contact-center/basics#stages). If unspecified, defaults to false. Sentiment analysis inspects user input and identifies the prevailing subjective opinion, especially to determine a user's attitude as positive, negative, or neutral: https://cloud.google.com/natural-language/docs/basics#sentiment_analysis For Participants.StreamingAnalyzeContent method, result will be in StreamingAnalyzeContentResponse.message.SentimentAnalysisResult. For Participants.AnalyzeContent method, result will be in AnalyzeContentResponse.message.SentimentAnalysisResult For Conversations.ListMessages method, result will be in ListMessagesResponse.messages.SentimentAnalysisResult If Pub/Sub notification is configured, result will be in ConversationEvent.new_message_payload.SentimentAnalysisResult.
  final pulumi.Input<bool> enableSentimentAnalysis;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigMessageAnalysisConfigResponse].
  /// [enableEntityExtraction] Enable entity extraction in conversation messages on [agent assist stage](https://cloud.google.com/dialogflow/priv/docs/contact-center/basics#stages). If unspecified, defaults to false. Currently, this feature is not general available, please contact Google to get access.
  /// [enableSentimentAnalysis] Enable sentiment analysis in conversation messages on [agent assist stage](https://cloud.google.com/dialogflow/priv/docs/contact-center/basics#stages). If unspecified, defaults to false. Sentiment analysis inspects user input and identifies the prevailing subjective opinion, especially to determine a user's attitude as positive, negative, or neutral: https://cloud.google.com/natural-language/docs/basics#sentiment_analysis For Participants.StreamingAnalyzeContent method, result will be in StreamingAnalyzeContentResponse.message.SentimentAnalysisResult. For Participants.AnalyzeContent method, result will be in AnalyzeContentResponse.message.SentimentAnalysisResult For Conversations.ListMessages method, result will be in ListMessagesResponse.messages.SentimentAnalysisResult If Pub/Sub notification is configured, result will be in ConversationEvent.new_message_payload.SentimentAnalysisResult.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigMessageAnalysisConfigResponse({
    required this.enableEntityExtraction,
    required this.enableSentimentAnalysis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableEntityExtraction': enableEntityExtraction,
      'enableSentimentAnalysis': enableSentimentAnalysis,
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigMessageAnalysisConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigMessageAnalysisConfigResponse(
      enableEntityExtraction: (map['enableEntityExtraction'] as bool).input(),
      enableSentimentAnalysis: (map['enableSentimentAnalysis'] as bool).input(),
    );
  }
}

