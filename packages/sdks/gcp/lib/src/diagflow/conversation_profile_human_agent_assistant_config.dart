// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config.dart';
import 'conversation_profile_human_agent_assistant_config_human_agent_suggestion_config.dart';
import 'conversation_profile_human_agent_assistant_config_message_analysis_config.dart';
import 'conversation_profile_human_agent_assistant_config_notification_config.dart';

class ConversationProfileHumanAgentAssistantConfig {
  /// Configuration for agent assistance of end user participant.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig>? endUserSuggestionConfig;
  /// Configuration for agent assistance of human agent participant.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfig>? humanAgentSuggestionConfig;
  /// desc
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig>? messageAnalysisConfig;
  /// Pub/Sub topic on which to publish new agent assistant events.
  /// Expects the format "projects/<Project ID>/locations/<Location ID>/topics/<Topic ID>"
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigNotificationConfig>? notificationConfig;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfig].
  /// [endUserSuggestionConfig] Configuration for agent assistance of end user participant.
  /// [humanAgentSuggestionConfig] Configuration for agent assistance of human agent participant.
  /// [messageAnalysisConfig] desc
  /// [notificationConfig] Pub/Sub topic on which to publish new agent assistant events.
  ConversationProfileHumanAgentAssistantConfig({
    this.endUserSuggestionConfig,
    this.humanAgentSuggestionConfig,
    this.messageAnalysisConfig,
    this.notificationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endUserSuggestionConfig': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig, Map<String, dynamic>>(endUserSuggestionConfig, (value) => value.toMap()),
      'humanAgentSuggestionConfig': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfig, Map<String, dynamic>>(humanAgentSuggestionConfig, (value) => value.toMap()),
      'messageAnalysisConfig': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig, Map<String, dynamic>>(messageAnalysisConfig, (value) => value.toMap()),
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigNotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
    };
  }

  factory ConversationProfileHumanAgentAssistantConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfig(
      endUserSuggestionConfig: map['endUserSuggestionConfig'] == null ? null : (ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig.fromMap((map['endUserSuggestionConfig'] as Map).cast<String, dynamic>())).input(),
      humanAgentSuggestionConfig: map['humanAgentSuggestionConfig'] == null ? null : (ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfig.fromMap((map['humanAgentSuggestionConfig'] as Map).cast<String, dynamic>())).input(),
      messageAnalysisConfig: map['messageAnalysisConfig'] == null ? null : (ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig.fromMap((map['messageAnalysisConfig'] as Map).cast<String, dynamic>())).input(),
      notificationConfig: map['notificationConfig'] == null ? null : (ConversationProfileHumanAgentAssistantConfigNotificationConfig.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

