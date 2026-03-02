// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_agent_answer_feedback_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_agent_gen_app_builder_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_agent_git_integration_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_speech_to_text_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_text_to_speech_settings.dart';

/// {@template pulumi_dialogflow_v3beta1_agent_dialogflow_v3beta1_args_doc}
/// The set of arguments for Agent.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_agent_dialogflow_v3beta1_args_doc}
class AgentDialogflowV3beta1Args {
  /// Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1AdvancedSettings>? advancedSettings;
  /// Optional. Answer feedback collection settings.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings>? answerFeedbackSettings;
  /// The URI of the agent's avatar. Avatars are used throughout the Dialogflow console and in the self-hosted [Web Demo](https://cloud.google.com/dialogflow/docs/integrations/web-demo) integration.
  final pulumi.Input<String>? avatarUri;
  /// Immutable. The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. This field cannot be set by the Agents.UpdateAgent method.
  final pulumi.Input<String> defaultLanguageCode;
  /// The description of the agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;
  /// The human-readable name of the agent, unique within the location.
  final pulumi.Input<String> displayName;
  /// Indicates if automatic spell correction is enabled in detect intent requests.
  final pulumi.Input<bool>? enableSpellCorrection;
  /// Indicates if stackdriver logging is enabled for the agent. Please use agent.advanced_settings instead.
  final pulumi.Input<bool>? enableStackdriverLogging;
  /// Gen App Builder-related agent-level settings.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings>? genAppBuilderSettings;
  /// Git integration settings for this agent.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings>? gitIntegrationSettings;
  final pulumi.Input<String>? location;
  /// Indicates whether the agent is locked for changes. If the agent is locked, modifications to the agent will be rejected except for RestoreAgent.
  final pulumi.Input<bool>? locked;
  /// The unique identifier of the agent. Required for the Agents.UpdateAgent method. Agents.CreateAgent populates the name automatically. Format: `projects//locations//agents/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Name of the SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  final pulumi.Input<String>? securitySettings;
  /// Speech recognition related settings.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1SpeechToTextSettings>? speechToTextSettings;
  /// Immutable. Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: `projects//locations//agents//flows/`.
  final pulumi.Input<String>? startFlow;
  /// The list of all languages supported by the agent (except for the `default_language_code`).
  final pulumi.Input<List<String>>? supportedLanguageCodes;
  /// Settings on instructing the speech synthesizer on how to generate the output audio content.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1TextToSpeechSettings>? textToSpeechSettings;
  /// The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  final pulumi.Input<String> timeZone;

  /// Creates a new [AgentDialogflowV3beta1Args].
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
  /// [location] Optional.
  /// [locked] Indicates whether the agent is locked for changes. If the agent is locked, modifications to the agent will be rejected except for RestoreAgent.
  /// [name] The unique identifier of the agent. Required for the Agents.UpdateAgent method. Agents.CreateAgent populates the name automatically. Format: `projects//locations//agents/`.
  /// [project] Optional.
  /// [securitySettings] Name of the SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  /// [speechToTextSettings] Speech recognition related settings.
  /// [startFlow] Immutable. Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: `projects//locations//agents//flows/`.
  /// [supportedLanguageCodes] The list of all languages supported by the agent (except for the `default_language_code`).
  /// [textToSpeechSettings] Settings on instructing the speech synthesizer on how to generate the output audio content.
  /// [timeZone] The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  AgentDialogflowV3beta1Args({
    this.advancedSettings,
    this.answerFeedbackSettings,
    this.avatarUri,
    required this.defaultLanguageCode,
    this.description,
    required this.displayName,
    this.enableSpellCorrection,
    this.enableStackdriverLogging,
    this.genAppBuilderSettings,
    this.gitIntegrationSettings,
    this.location,
    this.locked,
    this.name,
    this.project,
    this.securitySettings,
    this.speechToTextSettings,
    this.startFlow,
    this.supportedLanguageCodes,
    this.textToSpeechSettings,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1AdvancedSettings, Map<String, dynamic>>(advancedSettings, (value) => value.toMap()),
      'answerFeedbackSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings, Map<String, dynamic>>(answerFeedbackSettings, (value) => value.toMap()),
      'avatarUri': ?avatarUri,
      'defaultLanguageCode': defaultLanguageCode,
      'description': ?description,
      'displayName': displayName,
      'enableSpellCorrection': ?enableSpellCorrection,
      'enableStackdriverLogging': ?enableStackdriverLogging,
      'genAppBuilderSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings, Map<String, dynamic>>(genAppBuilderSettings, (value) => value.toMap()),
      'gitIntegrationSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings, Map<String, dynamic>>(gitIntegrationSettings, (value) => value.toMap()),
      'location': ?location,
      'locked': ?locked,
      'name': ?name,
      'project': ?project,
      'securitySettings': ?securitySettings,
      'speechToTextSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1SpeechToTextSettings, Map<String, dynamic>>(speechToTextSettings, (value) => value.toMap()),
      'startFlow': ?startFlow,
      'supportedLanguageCodes': ?supportedLanguageCodes,
      'textToSpeechSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1TextToSpeechSettings, Map<String, dynamic>>(textToSpeechSettings, (value) => value.toMap()),
      'timeZone': timeZone,
    };
  }

  factory AgentDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return AgentDialogflowV3beta1Args(
      advancedSettings: map['advancedSettings'] == null ? null : (GoogleCloudDialogflowCxV3beta1AdvancedSettings.fromMap((map['advancedSettings']! as Map).cast<String, dynamic>())).input(),
      answerFeedbackSettings: map['answerFeedbackSettings'] == null ? null : (GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettings.fromMap((map['answerFeedbackSettings']! as Map).cast<String, dynamic>())).input(),
      avatarUri: map['avatarUri'] == null ? null : (map['avatarUri']! as String).input(),
      defaultLanguageCode: (map['defaultLanguageCode'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      enableSpellCorrection: map['enableSpellCorrection'] == null ? null : (map['enableSpellCorrection']! as bool).input(),
      enableStackdriverLogging: map['enableStackdriverLogging'] == null ? null : (map['enableStackdriverLogging']! as bool).input(),
      genAppBuilderSettings: map['genAppBuilderSettings'] == null ? null : (GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettings.fromMap((map['genAppBuilderSettings']! as Map).cast<String, dynamic>())).input(),
      gitIntegrationSettings: map['gitIntegrationSettings'] == null ? null : (GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettings.fromMap((map['gitIntegrationSettings']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      locked: map['locked'] == null ? null : (map['locked']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      securitySettings: map['securitySettings'] == null ? null : (map['securitySettings']! as String).input(),
      speechToTextSettings: map['speechToTextSettings'] == null ? null : (GoogleCloudDialogflowCxV3beta1SpeechToTextSettings.fromMap((map['speechToTextSettings']! as Map).cast<String, dynamic>())).input(),
      startFlow: map['startFlow'] == null ? null : (map['startFlow']! as String).input(),
      supportedLanguageCodes: map['supportedLanguageCodes'] == null ? null : ((map['supportedLanguageCodes']! as List).cast<String>()).input(),
      textToSpeechSettings: map['textToSpeechSettings'] == null ? null : (GoogleCloudDialogflowCxV3beta1TextToSpeechSettings.fromMap((map['textToSpeechSettings']! as Map).cast<String, dynamic>())).input(),
      timeZone: (map['timeZone'] as String).input(),
    );
  }
}

