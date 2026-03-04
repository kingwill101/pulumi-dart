// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_automated_agent_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_handoff_config.dart';
import 'google_cloud_dialogflow_v2beta1_logging_config.dart';
import 'google_cloud_dialogflow_v2beta1_notification_config.dart';
import 'google_cloud_dialogflow_v2beta1_speech_to_text_config.dart';
import 'google_cloud_dialogflow_v2beta1_synthesize_speech_config.dart';

/// {@template pulumi_dialogflow_v2beta1_conversation_profile_dialogflow_v2beta1_args_doc}
/// The set of arguments for ConversationProfile.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_conversation_profile_dialogflow_v2beta1_args_doc}
class ConversationProfileDialogflowV2beta1Args {
  /// Configuration for an automated agent to use with this profile.
  final pulumi.Input<GoogleCloudDialogflowV2beta1AutomatedAgentConfig>?
  automatedAgentConfig;

  /// Human readable name for this profile. Max length 1024 bytes.
  final pulumi.Input<String> displayName;

  /// Configuration for agent assistance to use with this profile.
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig>?
  humanAgentAssistantConfig;

  /// Configuration for connecting to a live agent. Currently, this feature is not general available, please contact Google to get access.
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig>?
  humanAgentHandoffConfig;

  /// Language code for the conversation profile. If not specified, the language is en-US. Language at ConversationProfile should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// Configuration for logging conversation lifecycle events.
  final pulumi.Input<GoogleCloudDialogflowV2beta1LoggingConfig>? loggingConfig;

  /// The unique identifier of this conversation profile. Format: `projects//locations//conversationProfiles/`.
  final pulumi.Input<String>? name;

  /// Configuration for publishing new message events. Event will be sent in format of ConversationEvent
  final pulumi.Input<GoogleCloudDialogflowV2beta1NotificationConfig>?
  newMessageEventNotificationConfig;

  /// Configuration for publishing conversation lifecycle events.
  final pulumi.Input<GoogleCloudDialogflowV2beta1NotificationConfig>?
  notificationConfig;
  final pulumi.Input<String>? project;

  /// Name of the CX SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  final pulumi.Input<String>? securitySettings;

  /// Settings for speech transcription.
  final pulumi.Input<GoogleCloudDialogflowV2beta1SpeechToTextConfig>? sttConfig;

  /// The time zone of this conversational profile from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. Defaults to America/New_York.
  final pulumi.Input<String>? timeZone;

  /// Configuration for Text-to-Speech synthesization. Used by Phone Gateway to specify synthesization options. If agent defines synthesization options as well, agent settings overrides the option here.
  final pulumi.Input<GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig>?
  ttsConfig;

  /// Creates a new [ConversationProfileDialogflowV2beta1Args].
  /// [automatedAgentConfig] Configuration for an automated agent to use with this profile.
  /// [displayName] Human readable name for this profile. Max length 1024 bytes.
  /// [humanAgentAssistantConfig] Configuration for agent assistance to use with this profile.
  /// [humanAgentHandoffConfig] Configuration for connecting to a live agent. Currently, this feature is not general available, please contact Google to get access.
  /// [languageCode] Language code for the conversation profile. If not specified, the language is en-US. Language at ConversationProfile should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
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
  ConversationProfileDialogflowV2beta1Args({
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
      'automatedAgentConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2beta1AutomatedAgentConfig,
            Map<String, dynamic>
          >(automatedAgentConfig, (value) => value.toMap()),
      'displayName': displayName,
      'humanAgentAssistantConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig,
            Map<String, dynamic>
          >(humanAgentAssistantConfig, (value) => value.toMap()),
      'humanAgentHandoffConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig,
            Map<String, dynamic>
          >(humanAgentHandoffConfig, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'location': ?location,
      'loggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2beta1LoggingConfig,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
      'name': ?name,
      'newMessageEventNotificationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2beta1NotificationConfig,
            Map<String, dynamic>
          >(newMessageEventNotificationConfig, (value) => value.toMap()),
      'notificationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2beta1NotificationConfig,
            Map<String, dynamic>
          >(notificationConfig, (value) => value.toMap()),
      'project': ?project,
      'securitySettings': ?securitySettings,
      'sttConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2beta1SpeechToTextConfig,
            Map<String, dynamic>
          >(sttConfig, (value) => value.toMap()),
      'timeZone': ?timeZone,
      'ttsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig,
            Map<String, dynamic>
          >(ttsConfig, (value) => value.toMap()),
    };
  }

  factory ConversationProfileDialogflowV2beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConversationProfileDialogflowV2beta1Args(
      automatedAgentConfig: (() {
        final guardedValue = map['automatedAgentConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2beta1AutomatedAgentConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      humanAgentAssistantConfig: (() {
        final guardedValue = map['humanAgentAssistantConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      humanAgentHandoffConfig: (() {
        final guardedValue = map['humanAgentHandoffConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      languageCode: (() {
        final guardedValue = map['languageCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loggingConfig: (() {
        final guardedValue = map['loggingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2beta1LoggingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      newMessageEventNotificationConfig: (() {
        final guardedValue = map['newMessageEventNotificationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2beta1NotificationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      notificationConfig: (() {
        final guardedValue = map['notificationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2beta1NotificationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securitySettings: (() {
        final guardedValue = map['securitySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sttConfig: (() {
        final guardedValue = map['sttConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2beta1SpeechToTextConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ttsConfig: (() {
        final guardedValue = map['ttsConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
