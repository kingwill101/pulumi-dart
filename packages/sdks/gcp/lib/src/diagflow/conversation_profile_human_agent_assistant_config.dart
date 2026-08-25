// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config.dart';
import 'conversation_profile_human_agent_assistant_config_human_agent_suggestion_config.dart';
import 'conversation_profile_human_agent_assistant_config_message_analysis_config.dart';
import 'conversation_profile_human_agent_assistant_config_notification_config.dart';

class ConversationProfileHumanAgentAssistantConfig {
  /// Configuration for agent assistance of end user participant.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig?>? endUserSuggestionConfig;
  /// Configuration for agent assistance of human agent participant.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfig?>? humanAgentSuggestionConfig;
  /// Configuration for analyzing conversation messages.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig?>? messageAnalysisConfig;
  /// Pub/Sub topic on which to publish new agent assistant events.
  /// Expects the format "projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/topics/&lt;Topic ID&gt;"
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigNotificationConfig?>? notificationConfig;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfig].
  /// [endUserSuggestionConfig] Configuration for agent assistance of end user participant.
  /// [humanAgentSuggestionConfig] Configuration for agent assistance of human agent participant.
  /// [messageAnalysisConfig] Configuration for analyzing conversation messages.
  /// [notificationConfig] Pub/Sub topic on which to publish new agent assistant events.
  const ConversationProfileHumanAgentAssistantConfig({
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
      endUserSuggestionConfig: (() { final guardedValue = map['endUserSuggestionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      humanAgentSuggestionConfig: (() { final guardedValue = map['humanAgentSuggestionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      messageAnalysisConfig: (() { final guardedValue = map['messageAnalysisConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notificationConfig: (() { final guardedValue = map['notificationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileHumanAgentAssistantConfigNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
