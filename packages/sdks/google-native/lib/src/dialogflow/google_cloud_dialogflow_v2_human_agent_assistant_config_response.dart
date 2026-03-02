// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_message_analysis_config_response.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_config_response.dart';
import 'google_cloud_dialogflow_v2_notification_config_response.dart';

/// Defines the Human Agent Assist to connect to a conversation.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigResponse {
  /// Configuration for agent assistance of end user participant. Currently, this feature is not general available, please contact Google to get access.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfigResponse> endUserSuggestionConfig;
  /// Configuration for agent assistance of human agent participant.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfigResponse> humanAgentSuggestionConfig;
  /// Configuration for message analysis.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfigResponse> messageAnalysisConfig;
  /// Pub/Sub topic on which to publish new agent assistant events.
  final pulumi.Input<GoogleCloudDialogflowV2NotificationConfigResponse> notificationConfig;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigResponse].
  /// [endUserSuggestionConfig] Configuration for agent assistance of end user participant. Currently, this feature is not general available, please contact Google to get access.
  /// [humanAgentSuggestionConfig] Configuration for agent assistance of human agent participant.
  /// [messageAnalysisConfig] Configuration for message analysis.
  /// [notificationConfig] Pub/Sub topic on which to publish new agent assistant events.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigResponse({
    required this.endUserSuggestionConfig,
    required this.humanAgentSuggestionConfig,
    required this.messageAnalysisConfig,
    required this.notificationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endUserSuggestionConfig': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfigResponse, Map<String, dynamic>>(endUserSuggestionConfig, (value) => value.toMap()),
      'humanAgentSuggestionConfig': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfigResponse, Map<String, dynamic>>(humanAgentSuggestionConfig, (value) => value.toMap()),
      'messageAnalysisConfig': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfigResponse, Map<String, dynamic>>(messageAnalysisConfig, (value) => value.toMap()),
      'notificationConfig': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2NotificationConfigResponse, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigResponse(
      endUserSuggestionConfig: (GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfigResponse.fromMap((map['endUserSuggestionConfig'] as Map).cast<String, dynamic>())).input(),
      humanAgentSuggestionConfig: (GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfigResponse.fromMap((map['humanAgentSuggestionConfig'] as Map).cast<String, dynamic>())).input(),
      messageAnalysisConfig: (GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfigResponse.fromMap((map['messageAnalysisConfig'] as Map).cast<String, dynamic>())).input(),
      notificationConfig: (GoogleCloudDialogflowV2NotificationConfigResponse.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

