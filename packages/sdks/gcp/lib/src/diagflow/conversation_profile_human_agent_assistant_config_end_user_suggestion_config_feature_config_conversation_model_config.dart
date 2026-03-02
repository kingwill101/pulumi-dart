// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationModelConfig {
  /// Version of current baseline model. It will be ignored if model is set. Valid versions are: Article Suggestion baseline model: - 0.9 - 1.0 (default) Summarization baseline model: - 1.0
  final pulumi.Input<String>? baselineModelVersion;
  /// Conversation model resource name. Format: projects/<Project ID>/conversationModels/<Model ID>.
  final pulumi.Input<String>? model;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationModelConfig].
  /// [baselineModelVersion] Version of current baseline model. It will be ignored if model is set. Valid versions are: Article Suggestion baseline model: - 0.9 - 1.0 (default) Summarization baseline model: - 1.0
  /// [model] Conversation model resource name. Format: projects/<Project ID>/conversationModels/<Model ID>.
  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationModelConfig({
    this.baselineModelVersion,
    this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineModelVersion': ?baselineModelVersion,
      'model': ?model,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationModelConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationModelConfig(
      baselineModelVersion: map['baselineModelVersion'] == null ? null : (map['baselineModelVersion']! as String).input(),
      model: map['model'] == null ? null : (map['model']! as String).input(),
    );
  }
}

