// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_automated_agent_config.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config.dart';
import 'google_cloud_dialogflow_v2_human_agent_handoff_config.dart';
import 'google_cloud_dialogflow_v2_logging_config.dart';
import 'google_cloud_dialogflow_v2_notification_config.dart';
import 'google_cloud_dialogflow_v2_speech_to_text_config.dart';
import 'google_cloud_dialogflow_v2_synthesize_speech_config.dart';

/// {@template pulumi_dialogflow_v2_conversation_profile_args_doc}
/// The set of arguments for ConversationProfile.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_conversation_profile_args_doc}
class ConversationProfileArgs {
  /// Configuration for an automated agent to use with this profile.
  final pulumi.Input<GoogleCloudDialogflowV2AutomatedAgentConfig>? automatedAgentConfig;
  /// Human readable name for this profile. Max length 1024 bytes.
  final pulumi.Input<String> displayName;
  /// Configuration for agent assistance to use with this profile.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfig>? humanAgentAssistantConfig;
  /// Configuration for connecting to a live agent. Currently, this feature is not general available, please contact Google to get access.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentHandoffConfig>? humanAgentHandoffConfig;
  /// Language code for the conversation profile. If not specified, the language is en-US. Language at ConversationProfile should be set for all non en-US languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;
  /// Configuration for logging conversation lifecycle events.
  final pulumi.Input<GoogleCloudDialogflowV2LoggingConfig>? loggingConfig;
  /// The unique identifier of this conversation profile. Format: `projects//locations//conversationProfiles/`.
  final pulumi.Input<String>? name;
  /// Configuration for publishing new message events. Event will be sent in format of ConversationEvent
  final pulumi.Input<GoogleCloudDialogflowV2NotificationConfig>? newMessageEventNotificationConfig;
  /// Configuration for publishing conversation lifecycle events.
  final pulumi.Input<GoogleCloudDialogflowV2NotificationConfig>? notificationConfig;
  final pulumi.Input<String>? project;
  /// Name of the CX SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  final pulumi.Input<String>? securitySettings;
  /// Settings for speech transcription.
  final pulumi.Input<GoogleCloudDialogflowV2SpeechToTextConfig>? sttConfig;
  /// The time zone of this conversational profile from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. Defaults to America/New_York.
  final pulumi.Input<String>? timeZone;
  /// Configuration for Text-to-Speech synthesization. Used by Phone Gateway to specify synthesization options. If agent defines synthesization options as well, agent settings overrides the option here.
  final pulumi.Input<GoogleCloudDialogflowV2SynthesizeSpeechConfig>? ttsConfig;

  /// Creates a new [ConversationProfileArgs].
  /// [automatedAgentConfig] Configuration for an automated agent to use with this profile.
  /// [displayName] Human readable name for this profile. Max length 1024 bytes.
  /// [humanAgentAssistantConfig] Configuration for agent assistance to use with this profile.
  /// [humanAgentHandoffConfig] Configuration for connecting to a live agent. Currently, this feature is not general available, please contact Google to get access.
  /// [languageCode] Language code for the conversation profile. If not specified, the language is en-US. Language at ConversationProfile should be set for all non en-US languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  /// [location] Optional.
  /// [loggingConfig] Configuration for logging conversation lifecycle events.
  /// [name] The unique identifier of this conversation profile. Format: `projects//locations//conversationProfiles/`.
  /// [newMessageEventNotificationConfig] Configuration for publishing new message events. Event will be sent in format of ConversationEvent
  /// [notificationConfig] Configuration for publishing conversation lifecycle events.
  /// [project] Optional.
  /// [securitySettings] Name of the CX SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  /// [sttConfig] Settings for speech transcription.
  /// [timeZone] The time zone of this conversational profile from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. Defaults to America/New_York.
  /// [ttsConfig] Configuration for Text-to-Speech synthesization. Used by Phone Gateway to specify synthesization options. If agent defines synthesization options as well, agent settings overrides the option here.
  ConversationProfileArgs({
    this.automatedAgentConfig,
    required this.displayName,
    this.humanAgentAssistantConfig,
    this.humanAgentHandoffConfig,
    this.languageCode,
    this.location,
    this.loggingConfig,
    this.name,
    this.newMessageEventNotificationConfig,
    this.notificationConfig,
    this.project,
    this.securitySettings,
    this.sttConfig,
    this.timeZone,
    this.ttsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatedAgentConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2AutomatedAgentConfig, Map<String, dynamic>>(automatedAgentConfig, (value) => value.toMap()),
      'displayName': displayName,
      'humanAgentAssistantConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfig, Map<String, dynamic>>(humanAgentAssistantConfig, (value) => value.toMap()),
      'humanAgentHandoffConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2HumanAgentHandoffConfig, Map<String, dynamic>>(humanAgentHandoffConfig, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'location': ?location,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2LoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'name': ?name,
      'newMessageEventNotificationConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2NotificationConfig, Map<String, dynamic>>(newMessageEventNotificationConfig, (value) => value.toMap()),
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2NotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'project': ?project,
      'securitySettings': ?securitySettings,
      'sttConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2SpeechToTextConfig, Map<String, dynamic>>(sttConfig, (value) => value.toMap()),
      'timeZone': ?timeZone,
      'ttsConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2SynthesizeSpeechConfig, Map<String, dynamic>>(ttsConfig, (value) => value.toMap()),
    };
  }

  factory ConversationProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConversationProfileArgs(
      automatedAgentConfig: map['automatedAgentConfig'] == null ? null : (GoogleCloudDialogflowV2AutomatedAgentConfig.fromMap((map['automatedAgentConfig'] as Map).cast<String, dynamic>())).input(),
      displayName: (map['displayName'] as String).input(),
      humanAgentAssistantConfig: map['humanAgentAssistantConfig'] == null ? null : (GoogleCloudDialogflowV2HumanAgentAssistantConfig.fromMap((map['humanAgentAssistantConfig'] as Map).cast<String, dynamic>())).input(),
      humanAgentHandoffConfig: map['humanAgentHandoffConfig'] == null ? null : (GoogleCloudDialogflowV2HumanAgentHandoffConfig.fromMap((map['humanAgentHandoffConfig'] as Map).cast<String, dynamic>())).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (GoogleCloudDialogflowV2LoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      newMessageEventNotificationConfig: map['newMessageEventNotificationConfig'] == null ? null : (GoogleCloudDialogflowV2NotificationConfig.fromMap((map['newMessageEventNotificationConfig'] as Map).cast<String, dynamic>())).input(),
      notificationConfig: map['notificationConfig'] == null ? null : (GoogleCloudDialogflowV2NotificationConfig.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      securitySettings: map['securitySettings'] == null ? null : (map['securitySettings'] as String).input(),
      sttConfig: map['sttConfig'] == null ? null : (GoogleCloudDialogflowV2SpeechToTextConfig.fromMap((map['sttConfig'] as Map).cast<String, dynamic>())).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      ttsConfig: map['ttsConfig'] == null ? null : (GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromMap((map['ttsConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

