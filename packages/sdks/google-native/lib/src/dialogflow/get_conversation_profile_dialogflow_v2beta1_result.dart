// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_automated_agent_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_handoff_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_logging_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_notification_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_speech_to_text_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_synthesize_speech_config_response.dart';

/// Result data returned by getConversationProfile.
class GetConversationProfileDialogflowV2beta1Result {
  /// Configuration for an automated agent to use with this profile.
  final GoogleCloudDialogflowV2beta1AutomatedAgentConfigResponse? automatedAgentConfig;
  /// Create time of the conversation profile.
  final String? createTime;
  /// Human readable name for this profile. Max length 1024 bytes.
  final String? displayName;
  /// Configuration for agent assistance to use with this profile.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigResponse? humanAgentAssistantConfig;
  /// Configuration for connecting to a live agent. Currently, this feature is not general available, please contact Google to get access.
  final GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse? humanAgentHandoffConfig;
  /// Language code for the conversation profile. If not specified, the language is en-US. Language at ConversationProfile should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  final String? languageCode;
  /// Configuration for logging conversation lifecycle events.
  final GoogleCloudDialogflowV2beta1LoggingConfigResponse? loggingConfig;
  /// The unique identifier of this conversation profile. Format: `projects//locations//conversationProfiles/`.
  final String? name;
  /// Configuration for publishing new message events. Event will be sent in format of ConversationEvent
  final GoogleCloudDialogflowV2beta1NotificationConfigResponse? newMessageEventNotificationConfig;
  /// Configuration for publishing conversation lifecycle events.
  final GoogleCloudDialogflowV2beta1NotificationConfigResponse? notificationConfig;
  /// Name of the CX SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  final String? securitySettings;
  /// Settings for speech transcription.
  final GoogleCloudDialogflowV2beta1SpeechToTextConfigResponse? sttConfig;
  /// The time zone of this conversational profile from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. Defaults to America/New_York.
  final String? timeZone;
  /// Configuration for Text-to-Speech synthesization. Used by Phone Gateway to specify synthesization options. If agent defines synthesization options as well, agent settings overrides the option here.
  final GoogleCloudDialogflowV2beta1SynthesizeSpeechConfigResponse? ttsConfig;
  /// Update time of the conversation profile.
  final String? updateTime;

  /// Creates a new [GetConversationProfileDialogflowV2beta1Result].
  /// [automatedAgentConfig] Configuration for an automated agent to use with this profile.
  /// [createTime] Create time of the conversation profile.
  /// [displayName] Human readable name for this profile. Max length 1024 bytes.
  /// [humanAgentAssistantConfig] Configuration for agent assistance to use with this profile.
  /// [humanAgentHandoffConfig] Configuration for connecting to a live agent. Currently, this feature is not general available, please contact Google to get access.
  /// [languageCode] Language code for the conversation profile. If not specified, the language is en-US. Language at ConversationProfile should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  /// [loggingConfig] Configuration for logging conversation lifecycle events.
  /// [name] The unique identifier of this conversation profile. Format: `projects//locations//conversationProfiles/`.
  /// [newMessageEventNotificationConfig] Configuration for publishing new message events. Event will be sent in format of ConversationEvent
  /// [notificationConfig] Configuration for publishing conversation lifecycle events.
  /// [securitySettings] Name of the CX SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  /// [sttConfig] Settings for speech transcription.
  /// [timeZone] The time zone of this conversational profile from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. Defaults to America/New_York.
  /// [ttsConfig] Configuration for Text-to-Speech synthesization. Used by Phone Gateway to specify synthesization options. If agent defines synthesization options as well, agent settings overrides the option here.
  /// [updateTime] Update time of the conversation profile.
  const GetConversationProfileDialogflowV2beta1Result({
    this.automatedAgentConfig,
    this.createTime,
    this.displayName,
    this.humanAgentAssistantConfig,
    this.humanAgentHandoffConfig,
    this.languageCode,
    this.loggingConfig,
    this.name,
    this.newMessageEventNotificationConfig,
    this.notificationConfig,
    this.securitySettings,
    this.sttConfig,
    this.timeZone,
    this.ttsConfig,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatedAgentConfig': ?automatedAgentConfig?.toMap(),
      'createTime': ?createTime,
      'displayName': ?displayName,
      'humanAgentAssistantConfig': ?humanAgentAssistantConfig?.toMap(),
      'humanAgentHandoffConfig': ?humanAgentHandoffConfig?.toMap(),
      'languageCode': ?languageCode,
      'loggingConfig': ?loggingConfig?.toMap(),
      'name': ?name,
      'newMessageEventNotificationConfig': ?newMessageEventNotificationConfig?.toMap(),
      'notificationConfig': ?notificationConfig?.toMap(),
      'securitySettings': ?securitySettings,
      'sttConfig': ?sttConfig?.toMap(),
      'timeZone': ?timeZone,
      'ttsConfig': ?ttsConfig?.toMap(),
      'updateTime': ?updateTime,
    };
  }

  factory GetConversationProfileDialogflowV2beta1Result.fromMap(Map<String, dynamic> map) {
    return GetConversationProfileDialogflowV2beta1Result(
      automatedAgentConfig: (() { final guardedValue = map['automatedAgentConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2beta1AutomatedAgentConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      humanAgentAssistantConfig: (() { final guardedValue = map['humanAgentAssistantConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      humanAgentHandoffConfig: (() { final guardedValue = map['humanAgentHandoffConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2beta1HumanAgentHandoffConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2beta1LoggingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      newMessageEventNotificationConfig: (() { final guardedValue = map['newMessageEventNotificationConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2beta1NotificationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      notificationConfig: (() { final guardedValue = map['notificationConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2beta1NotificationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      securitySettings: (() { final guardedValue = map['securitySettings']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sttConfig: (() { final guardedValue = map['sttConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2beta1SpeechToTextConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ttsConfig: (() { final guardedValue = map['ttsConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowV2beta1SynthesizeSpeechConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
