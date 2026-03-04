// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_profile_automated_agent_config.dart';
import 'conversation_profile_human_agent_assistant_config.dart';
import 'conversation_profile_human_agent_handoff_config.dart';
import 'conversation_profile_logging_config.dart';
import 'conversation_profile_new_message_event_notification_config.dart';
import 'conversation_profile_new_recognition_result_notification_config.dart';
import 'conversation_profile_notification_config.dart';
import 'conversation_profile_stt_config.dart';
import 'conversation_profile_tts_config.dart';

/// Input properties used for looking up and filtering ConversationProfile resources.
class ConversationProfileState {
  /// Configuration for an automated agent to use with this profile
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileAutomatedAgentConfig>?
  automatedAgentConfig;

  /// Required. Human readable name for this profile. Max length 1024 bytes.
  final pulumi.Input<String>? displayName;

  /// Configuration for connecting to a live agent
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfig>?
  humanAgentAssistantConfig;

  /// Defines the hand off to a live agent, typically on which external agent service provider to connect to a conversation.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentHandoffConfig>?
  humanAgentHandoffConfig;

  /// Language code for the conversation profile. This should be a BCP-47 language tag.
  final pulumi.Input<String>? languageCode;

  /// desc
  final pulumi.Input<String>? location;

  /// Defines logging behavior for conversation lifecycle events.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileLoggingConfig>? loggingConfig;

  /// name
  final pulumi.Input<String>? name;

  /// Pub/Sub topic on which to publish new agent assistant events.
  /// Expects the format "projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/topics/&lt;Topic ID&gt;"
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileNewMessageEventNotificationConfig>?
  newMessageEventNotificationConfig;

  /// Optional. Configuration for publishing transcription intermediate results. Event will be sent in format of ConversationEvent. If configured, the following information will be populated as ConversationEvent Pub/Sub message attributes: - "participant_id" - "participantRole" - "message_id"
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileNewRecognitionResultNotificationConfig>?
  newRecognitionResultNotificationConfig;

  /// Pub/Sub topic on which to publish new agent assistant events.
  /// Expects the format "projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/topics/&lt;Topic ID&gt;"
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileNotificationConfig>? notificationConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Name of the CX SecuritySettings reference for the agent.
  final pulumi.Input<String>? securitySettings;

  /// Settings for speech transcription.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileSttConfig>? sttConfig;

  /// The time zone of this conversational profile.
  final pulumi.Input<String>? timeZone;

  /// Configuration for Text-to-Speech synthesization. If agent defines synthesization options as well, agent settings overrides the option here.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileTtsConfig>? ttsConfig;

  /// Creates a new [ConversationProfileState].
  /// [automatedAgentConfig] Configuration for an automated agent to use with this profile
  /// [displayName] Required. Human readable name for this profile. Max length 1024 bytes.
  /// [humanAgentAssistantConfig] Configuration for connecting to a live agent
  /// [humanAgentHandoffConfig] Defines the hand off to a live agent, typically on which external agent service provider to connect to a conversation.
  /// [languageCode] Language code for the conversation profile. This should be a BCP-47 language tag.
  /// [location] desc
  /// [loggingConfig] Defines logging behavior for conversation lifecycle events.
  /// [name] name
  /// [newMessageEventNotificationConfig] Pub/Sub topic on which to publish new agent assistant events.
  /// [newRecognitionResultNotificationConfig] Optional. Configuration for publishing transcription intermediate results. Event will be sent in format of ConversationEvent. If configured, the following information will be populated as ConversationEvent Pub/Sub message attributes: - "participant_id" - "participantRole" - "message_id"
  /// [notificationConfig] Pub/Sub topic on which to publish new agent assistant events.
  /// [project] The ID of the project in which the resource belongs.
  /// [securitySettings] Name of the CX SecuritySettings reference for the agent.
  /// [sttConfig] Settings for speech transcription.
  /// [timeZone] The time zone of this conversational profile.
  /// [ttsConfig] Configuration for Text-to-Speech synthesization. If agent defines synthesization options as well, agent settings overrides the option here.
  ConversationProfileState({
    this.automatedAgentConfig,
    this.displayName,
    this.humanAgentAssistantConfig,
    this.humanAgentHandoffConfig,
    this.languageCode,
    this.location,
    this.loggingConfig,
    this.name,
    this.newMessageEventNotificationConfig,
    this.newRecognitionResultNotificationConfig,
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
            ConversationProfileAutomatedAgentConfig,
            Map<String, dynamic>
          >(automatedAgentConfig, (value) => value.toMap()),
      'displayName': ?displayName,
      'humanAgentAssistantConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConversationProfileHumanAgentAssistantConfig,
            Map<String, dynamic>
          >(humanAgentAssistantConfig, (value) => value.toMap()),
      'humanAgentHandoffConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConversationProfileHumanAgentHandoffConfig,
            Map<String, dynamic>
          >(humanAgentHandoffConfig, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'location': ?location,
      'loggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConversationProfileLoggingConfig,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
      'name': ?name,
      'newMessageEventNotificationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConversationProfileNewMessageEventNotificationConfig,
            Map<String, dynamic>
          >(newMessageEventNotificationConfig, (value) => value.toMap()),
      'newRecognitionResultNotificationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConversationProfileNewRecognitionResultNotificationConfig,
            Map<String, dynamic>
          >(newRecognitionResultNotificationConfig, (value) => value.toMap()),
      'notificationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConversationProfileNotificationConfig,
            Map<String, dynamic>
          >(notificationConfig, (value) => value.toMap()),
      'project': ?project,
      'securitySettings': ?securitySettings,
      'sttConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConversationProfileSttConfig,
            Map<String, dynamic>
          >(sttConfig, (value) => value.toMap()),
      'timeZone': ?timeZone,
      'ttsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConversationProfileTtsConfig,
            Map<String, dynamic>
          >(ttsConfig, (value) => value.toMap()),
    };
  }

  factory ConversationProfileState.fromMap(Map<String, dynamic> map) {
    return ConversationProfileState(
      automatedAgentConfig: (() {
        final guardedValue = map['automatedAgentConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConversationProfileAutomatedAgentConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      humanAgentAssistantConfig: (() {
        final guardedValue = map['humanAgentAssistantConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConversationProfileHumanAgentAssistantConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      humanAgentHandoffConfig: (() {
        final guardedValue = map['humanAgentHandoffConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConversationProfileHumanAgentHandoffConfig.fromMap(
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
          ConversationProfileLoggingConfig.fromMap(
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
          ConversationProfileNewMessageEventNotificationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      newRecognitionResultNotificationConfig: (() {
        final guardedValue = map['newRecognitionResultNotificationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConversationProfileNewRecognitionResultNotificationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      notificationConfig: (() {
        final guardedValue = map['notificationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConversationProfileNotificationConfig.fromMap(
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
          ConversationProfileSttConfig.fromMap(
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
          ConversationProfileTtsConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
