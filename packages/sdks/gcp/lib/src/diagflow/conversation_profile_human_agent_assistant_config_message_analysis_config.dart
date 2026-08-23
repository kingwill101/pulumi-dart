// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig {
  /// Enable entity extraction in conversation messages on agent assist stage.
  final pulumi.Input<bool>? enableEntityExtraction;
  /// Enable sentiment analysis in conversation messages on agent assist stage. Sentiment analysis inspects user input and identifies the prevailing subjective opinion, especially to determine a user's attitude as positive, negative, or neutral.
  final pulumi.Input<bool>? enableSentimentAnalysis;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig].
  /// [enableEntityExtraction] Enable entity extraction in conversation messages on agent assist stage.
  /// [enableSentimentAnalysis] Enable sentiment analysis in conversation messages on agent assist stage. Sentiment analysis inspects user input and identifies the prevailing subjective opinion, especially to determine a user's attitude as positive, negative, or neutral.
  const ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig({
    this.enableEntityExtraction,
    this.enableSentimentAnalysis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableEntityExtraction': ?enableEntityExtraction,
      'enableSentimentAnalysis': ?enableSentimentAnalysis,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig(
      enableEntityExtraction: (() { final guardedValue = map['enableEntityExtraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSentimentAnalysis: (() { final guardedValue = map['enableSentimentAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
