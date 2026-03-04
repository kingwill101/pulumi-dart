// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_agent_answer_feedback_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_agent_gen_app_builder_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_agent_git_integration_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_speech_to_text_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_text_to_speech_settings_response.dart';

/// Result data returned by getAgent.
class GetAgentDialogflowV3beta1Result {
  /// Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse advancedSettings;

  /// Optional. Answer feedback collection settings.
  final GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettingsResponse
  answerFeedbackSettings;

  /// The URI of the agent's avatar. Avatars are used throughout the Dialogflow console and in the self-hosted [Web Demo](https://cloud.google.com/dialogflow/docs/integrations/web-demo) integration.
  final String avatarUri;

  /// Immutable. The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. This field cannot be set by the Agents.UpdateAgent method.
  final String defaultLanguageCode;

  /// The description of the agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  final String description;

  /// The human-readable name of the agent, unique within the location.
  final String displayName;

  /// Indicates if automatic spell correction is enabled in detect intent requests.
  final bool enableSpellCorrection;

  /// Indicates if stackdriver logging is enabled for the agent. Please use agent.advanced_settings instead.
  final bool enableStackdriverLogging;

  /// Gen App Builder-related agent-level settings.
  final GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettingsResponse
  genAppBuilderSettings;

  /// Git integration settings for this agent.
  final GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsResponse
  gitIntegrationSettings;

  /// Indicates whether the agent is locked for changes. If the agent is locked, modifications to the agent will be rejected except for RestoreAgent.
  final bool locked;

  /// The unique identifier of the agent. Required for the Agents.UpdateAgent method. Agents.CreateAgent populates the name automatically. Format: `projects//locations//agents/`.
  final String name;

  /// Name of the SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  final String securitySettings;

  /// Speech recognition related settings.
  final GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse
  speechToTextSettings;

  /// Immutable. Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: `projects//locations//agents//flows/`.
  final String startFlow;

  /// The list of all languages supported by the agent (except for the `default_language_code`).
  final List<String> supportedLanguageCodes;

  /// Settings on instructing the speech synthesizer on how to generate the output audio content.
  final GoogleCloudDialogflowCxV3beta1TextToSpeechSettingsResponse
  textToSpeechSettings;

  /// The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  final String timeZone;

  /// Creates a new [GetAgentDialogflowV3beta1Result].
  /// [advancedSettings] Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [answerFeedbackSettings] Optional. Answer feedback collection settings.
  /// [avatarUri] The URI of the agent's avatar. Avatars are used throughout the Dialogflow console and in the self-hosted [Web Demo](https://cloud.google.com/dialogflow/docs/integrations/web-demo) integration.
  /// [defaultLanguageCode] Immutable. The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. This field cannot be set by the Agents.UpdateAgent method.
  /// [description] The description of the agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the agent, unique within the location.
  /// [enableSpellCorrection] Indicates if automatic spell correction is enabled in detect intent requests.
  /// [enableStackdriverLogging] Indicates if stackdriver logging is enabled for the agent. Please use agent.advanced_settings instead.
  /// [genAppBuilderSettings] Gen App Builder-related agent-level settings.
  /// [gitIntegrationSettings] Git integration settings for this agent.
  /// [locked] Indicates whether the agent is locked for changes. If the agent is locked, modifications to the agent will be rejected except for RestoreAgent.
  /// [name] The unique identifier of the agent. Required for the Agents.UpdateAgent method. Agents.CreateAgent populates the name automatically. Format: `projects//locations//agents/`.
  /// [securitySettings] Name of the SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  /// [speechToTextSettings] Speech recognition related settings.
  /// [startFlow] Immutable. Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: `projects//locations//agents//flows/`.
  /// [supportedLanguageCodes] The list of all languages supported by the agent (except for the `default_language_code`).
  /// [textToSpeechSettings] Settings on instructing the speech synthesizer on how to generate the output audio content.
  /// [timeZone] The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  GetAgentDialogflowV3beta1Result({
    required this.advancedSettings,
    required this.answerFeedbackSettings,
    required this.avatarUri,
    required this.defaultLanguageCode,
    required this.description,
    required this.displayName,
    required this.enableSpellCorrection,
    required this.enableStackdriverLogging,
    required this.genAppBuilderSettings,
    required this.gitIntegrationSettings,
    required this.locked,
    required this.name,
    required this.securitySettings,
    required this.speechToTextSettings,
    required this.startFlow,
    required this.supportedLanguageCodes,
    required this.textToSpeechSettings,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': advancedSettings.toMap(),
      'answerFeedbackSettings': answerFeedbackSettings.toMap(),
      'avatarUri': avatarUri,
      'defaultLanguageCode': defaultLanguageCode,
      'description': description,
      'displayName': displayName,
      'enableSpellCorrection': enableSpellCorrection,
      'enableStackdriverLogging': enableStackdriverLogging,
      'genAppBuilderSettings': genAppBuilderSettings.toMap(),
      'gitIntegrationSettings': gitIntegrationSettings.toMap(),
      'locked': locked,
      'name': name,
      'securitySettings': securitySettings,
      'speechToTextSettings': speechToTextSettings.toMap(),
      'startFlow': startFlow,
      'supportedLanguageCodes': supportedLanguageCodes,
      'textToSpeechSettings': textToSpeechSettings.toMap(),
      'timeZone': timeZone,
    };
  }

  factory GetAgentDialogflowV3beta1Result.fromMap(Map<String, dynamic> map) {
    return GetAgentDialogflowV3beta1Result(
      advancedSettings:
          GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse.fromMap(
            (map['advancedSettings']! as Map).cast<String, dynamic>(),
          ),
      answerFeedbackSettings:
          GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettingsResponse.fromMap(
            (map['answerFeedbackSettings']! as Map).cast<String, dynamic>(),
          ),
      avatarUri: map['avatarUri'] as String,
      defaultLanguageCode: map['defaultLanguageCode'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      enableSpellCorrection: map['enableSpellCorrection'] as bool,
      enableStackdriverLogging: map['enableStackdriverLogging'] as bool,
      genAppBuilderSettings:
          GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettingsResponse.fromMap(
            (map['genAppBuilderSettings']! as Map).cast<String, dynamic>(),
          ),
      gitIntegrationSettings:
          GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsResponse.fromMap(
            (map['gitIntegrationSettings']! as Map).cast<String, dynamic>(),
          ),
      locked: map['locked'] as bool,
      name: map['name'] as String,
      securitySettings: map['securitySettings'] as String,
      speechToTextSettings:
          GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse.fromMap(
            (map['speechToTextSettings']! as Map).cast<String, dynamic>(),
          ),
      startFlow: map['startFlow'] as String,
      supportedLanguageCodes: (map['supportedLanguageCodes'] as List)
          .cast<String>(),
      textToSpeechSettings:
          GoogleCloudDialogflowCxV3beta1TextToSpeechSettingsResponse.fromMap(
            (map['textToSpeechSettings']! as Map).cast<String, dynamic>(),
          ),
      timeZone: map['timeZone'] as String,
    );
  }
}
