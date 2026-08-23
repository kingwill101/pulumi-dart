// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_message_analysis_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_config.dart';
import 'google_cloud_dialogflow_v2beta1_notification_config.dart';

/// Defines the Human Agent Assistant to connect to a conversation.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig {
  /// Configuration for agent assistance of end user participant. Currently, this feature is not general available, please contact Google to get access.
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig>? endUserSuggestionConfig;
  /// Configuration for agent assistance of human agent participant.
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig>? humanAgentSuggestionConfig;
  /// Configuration for message analysis.
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigMessageAnalysisConfig>? messageAnalysisConfig;
  /// Pub/Sub topic on which to publish new agent assistant events.
  final pulumi.Input<GoogleCloudDialogflowV2beta1NotificationConfig>? notificationConfig;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig].
  /// [endUserSuggestionConfig] Configuration for agent assistance of end user participant. Currently, this feature is not general available, please contact Google to get access.
  /// [humanAgentSuggestionConfig] Configuration for agent assistance of human agent participant.
  /// [messageAnalysisConfig] Configuration for message analysis.
  /// [notificationConfig] Pub/Sub topic on which to publish new agent assistant events.
  const GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig({
    this.endUserSuggestionConfig,
    this.humanAgentSuggestionConfig,
    this.messageAnalysisConfig,
    this.notificationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endUserSuggestionConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig, Map<String, dynamic>>(endUserSuggestionConfig, (value) => value.toMap()),
      'humanAgentSuggestionConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig, Map<String, dynamic>>(humanAgentSuggestionConfig, (value) => value.toMap()),
      'messageAnalysisConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigMessageAnalysisConfig, Map<String, dynamic>>(messageAnalysisConfig, (value) => value.toMap()),
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1NotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig(
      endUserSuggestionConfig: (() { final guardedValue = map['endUserSuggestionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      humanAgentSuggestionConfig: (() { final guardedValue = map['humanAgentSuggestionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      messageAnalysisConfig: (() { final guardedValue = map['messageAnalysisConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigMessageAnalysisConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notificationConfig: (() { final guardedValue = map['notificationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1NotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
