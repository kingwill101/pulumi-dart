// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_agent_advanced_settings.dart';
import 'cx_agent_answer_feedback_settings.dart';
import 'cx_agent_client_certificate_settings.dart';
import 'cx_agent_gen_app_builder_settings.dart';
import 'cx_agent_git_integration_settings.dart';
import 'cx_agent_personalization_settings.dart';
import 'cx_agent_speech_to_text_settings.dart';
import 'cx_agent_text_to_speech_settings.dart';

/// Input properties used for looking up and filtering CxAgent resources.
class CxAgentState {
  /// Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
  /// Structure is documented below.
  final pulumi.Input<CxAgentAdvancedSettings>? advancedSettings;
  /// Answer feedback collection settings.
  /// Structure is documented below.
  final pulumi.Input<CxAgentAnswerFeedbackSettings>? answerFeedbackSettings;
  /// The URI of the agent's avatar. Avatars are used throughout the Dialogflow console and in the self-hosted Web Demo integration.
  final pulumi.Input<String>? avatarUri;
  /// Settings for custom client certificates.
  /// Structure is documented below.
  final pulumi.Input<CxAgentClientCertificateSettings>? clientCertificateSettings;
  /// The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// for a list of the currently supported language codes. This field cannot be updated after creation.
  final pulumi.Input<String>? defaultLanguageCode;
  final pulumi.Input<bool>? deleteChatEngineOnDestroy;
  /// The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;
  /// The human-readable name of the agent, unique within the location.
  final pulumi.Input<String>? displayName;
  /// Enable training multi-lingual models for this agent. These models will be trained on all the languages supported by the agent.
  final pulumi.Input<bool>? enableMultiLanguageTraining;
  /// Indicates if automatic spell correction is enabled in detect intent requests.
  final pulumi.Input<bool>? enableSpellCorrection;
  /// (Optional, Deprecated)
  /// Determines whether this agent should log conversation queries.
  ///
  /// > **Warning:** `enable_stackdriver_logging` is deprecated and will be removed in a future major release. Please use `advanced_settings.logging_settings.enable_stackdriver_logging`instead.
  final pulumi.Input<bool>? enableStackdriverLogging;
  /// Gen App Builder-related agent-level settings.
  /// Structure is documented below.
  final pulumi.Input<CxAgentGenAppBuilderSettings>? genAppBuilderSettings;
  /// Git integration settings for this agent.
  /// Structure is documented below.
  final pulumi.Input<CxAgentGitIntegrationSettings>? gitIntegrationSettings;
  /// The name of the location this agent is located in.
  /// > **Note:** The first time you are deploying an Agent in your project you must configure location settings.
  /// This is a one time step but at the moment you can only [configure location settings](https://cloud.google.com/dialogflow/cx/docs/concept/region#location-settings) via the Dialogflow CX console.
  /// Another options is to use global location so you don't need to manually configure location settings.
  final pulumi.Input<String>? location;
  /// Indicates whether the agent is locked for changes. If the agent is locked, modifications to the agent will be rejected except for [agents.restore][].
  final pulumi.Input<bool>? locked;
  /// The unique identifier of the agent.
  final pulumi.Input<String>? name;
  /// Settings for end user personalization.
  /// Structure is documented below.
  final pulumi.Input<CxAgentPersonalizationSettings>? personalizationSettings;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A read only boolean field reflecting Zone Isolation status of the agent.
  final pulumi.Input<bool>? satisfiesPzi;
  /// A read only boolean field reflecting Zone Separation status of the agent.
  final pulumi.Input<bool>? satisfiesPzs;
  /// Name of the SecuritySettings reference for the agent. Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>.
  final pulumi.Input<String>? securitySettings;
  /// Settings related to speech recognition.
  /// Structure is documented below.
  final pulumi.Input<CxAgentSpeechToTextSettings>? speechToTextSettings;
  /// Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  final pulumi.Input<String>? startFlow;
  /// Name of the start playbook in this agent. A start playbook will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: **projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/playbooks/<PlaybookID>**. Currently only the default playbook with id "00000000-0000-0000-0000-000000000000" is allowed.
  final pulumi.Input<String>? startPlaybook;
  /// The list of all languages supported by this agent (except for the default_language_code).
  final pulumi.Input<List<String>>? supportedLanguageCodes;
  /// Settings related to speech synthesizing.
  /// Structure is documented below.
  final pulumi.Input<CxAgentTextToSpeechSettings>? textToSpeechSettings;
  /// The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
  /// Europe/Paris.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [CxAgentState].
  /// [advancedSettings] Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [answerFeedbackSettings] Answer feedback collection settings.
  /// [avatarUri] The URI of the agent's avatar. Avatars are used throughout the Dialogflow console and in the self-hosted Web Demo integration.
  /// [clientCertificateSettings] Settings for custom client certificates.
  /// [defaultLanguageCode] The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// [deleteChatEngineOnDestroy] Optional.
  /// [description] The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the agent, unique within the location.
  /// [enableMultiLanguageTraining] Enable training multi-lingual models for this agent. These models will be trained on all the languages supported by the agent.
  /// [enableSpellCorrection] Indicates if automatic spell correction is enabled in detect intent requests.
  /// [enableStackdriverLogging] (Optional, Deprecated)
  /// [genAppBuilderSettings] Gen App Builder-related agent-level settings.
  /// [gitIntegrationSettings] Git integration settings for this agent.
  /// [location] The name of the location this agent is located in.
  /// [locked] Indicates whether the agent is locked for changes. If the agent is locked, modifications to the agent will be rejected except for [agents.restore][].
  /// [name] The unique identifier of the agent.
  /// [personalizationSettings] Settings for end user personalization.
  /// [project] The ID of the project in which the resource belongs.
  /// [satisfiesPzi] A read only boolean field reflecting Zone Isolation status of the agent.
  /// [satisfiesPzs] A read only boolean field reflecting Zone Separation status of the agent.
  /// [securitySettings] Name of the SecuritySettings reference for the agent. Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>.
  /// [speechToTextSettings] Settings related to speech recognition.
  /// [startFlow] Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  /// [startPlaybook] Name of the start playbook in this agent. A start playbook will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: **projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/playbooks/<PlaybookID>**. Currently only the default playbook with id "00000000-0000-0000-0000-000000000000" is allowed.
  /// [supportedLanguageCodes] The list of all languages supported by this agent (except for the default_language_code).
  /// [textToSpeechSettings] Settings related to speech synthesizing.
  /// [timeZone] The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
  CxAgentState({
    this.advancedSettings,
    this.answerFeedbackSettings,
    this.avatarUri,
    this.clientCertificateSettings,
    this.defaultLanguageCode,
    this.deleteChatEngineOnDestroy,
    this.description,
    this.displayName,
    this.enableMultiLanguageTraining,
    this.enableSpellCorrection,
    this.enableStackdriverLogging,
    this.genAppBuilderSettings,
    this.gitIntegrationSettings,
    this.location,
    this.locked,
    this.name,
    this.personalizationSettings,
    this.project,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.securitySettings,
    this.speechToTextSettings,
    this.startFlow,
    this.startPlaybook,
    this.supportedLanguageCodes,
    this.textToSpeechSettings,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentAdvancedSettings, Map<String, dynamic>>(advancedSettings, (value) => value.toMap()),
      'answerFeedbackSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentAnswerFeedbackSettings, Map<String, dynamic>>(answerFeedbackSettings, (value) => value.toMap()),
      'avatarUri': ?avatarUri,
      'clientCertificateSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentClientCertificateSettings, Map<String, dynamic>>(clientCertificateSettings, (value) => value.toMap()),
      'defaultLanguageCode': ?defaultLanguageCode,
      'deleteChatEngineOnDestroy': ?deleteChatEngineOnDestroy,
      'description': ?description,
      'displayName': ?displayName,
      'enableMultiLanguageTraining': ?enableMultiLanguageTraining,
      'enableSpellCorrection': ?enableSpellCorrection,
      'enableStackdriverLogging': ?enableStackdriverLogging,
      'genAppBuilderSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentGenAppBuilderSettings, Map<String, dynamic>>(genAppBuilderSettings, (value) => value.toMap()),
      'gitIntegrationSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentGitIntegrationSettings, Map<String, dynamic>>(gitIntegrationSettings, (value) => value.toMap()),
      'location': ?location,
      'locked': ?locked,
      'name': ?name,
      'personalizationSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentPersonalizationSettings, Map<String, dynamic>>(personalizationSettings, (value) => value.toMap()),
      'project': ?project,
      'satisfiesPzi': ?satisfiesPzi,
      'satisfiesPzs': ?satisfiesPzs,
      'securitySettings': ?securitySettings,
      'speechToTextSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentSpeechToTextSettings, Map<String, dynamic>>(speechToTextSettings, (value) => value.toMap()),
      'startFlow': ?startFlow,
      'startPlaybook': ?startPlaybook,
      'supportedLanguageCodes': ?supportedLanguageCodes,
      'textToSpeechSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentTextToSpeechSettings, Map<String, dynamic>>(textToSpeechSettings, (value) => value.toMap()),
      'timeZone': ?timeZone,
    };
  }

  factory CxAgentState.fromMap(Map<String, dynamic> map) {
    return CxAgentState(
      advancedSettings: map['advancedSettings'] == null ? null : (CxAgentAdvancedSettings.fromMap((map['advancedSettings'] as Map).cast<String, dynamic>())).input(),
      answerFeedbackSettings: map['answerFeedbackSettings'] == null ? null : (CxAgentAnswerFeedbackSettings.fromMap((map['answerFeedbackSettings'] as Map).cast<String, dynamic>())).input(),
      avatarUri: map['avatarUri'] == null ? null : (map['avatarUri'] as String).input(),
      clientCertificateSettings: map['clientCertificateSettings'] == null ? null : (CxAgentClientCertificateSettings.fromMap((map['clientCertificateSettings'] as Map).cast<String, dynamic>())).input(),
      defaultLanguageCode: map['defaultLanguageCode'] == null ? null : (map['defaultLanguageCode'] as String).input(),
      deleteChatEngineOnDestroy: map['deleteChatEngineOnDestroy'] == null ? null : (map['deleteChatEngineOnDestroy'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      enableMultiLanguageTraining: map['enableMultiLanguageTraining'] == null ? null : (map['enableMultiLanguageTraining'] as bool).input(),
      enableSpellCorrection: map['enableSpellCorrection'] == null ? null : (map['enableSpellCorrection'] as bool).input(),
      enableStackdriverLogging: map['enableStackdriverLogging'] == null ? null : (map['enableStackdriverLogging'] as bool).input(),
      genAppBuilderSettings: map['genAppBuilderSettings'] == null ? null : (CxAgentGenAppBuilderSettings.fromMap((map['genAppBuilderSettings'] as Map).cast<String, dynamic>())).input(),
      gitIntegrationSettings: map['gitIntegrationSettings'] == null ? null : (CxAgentGitIntegrationSettings.fromMap((map['gitIntegrationSettings'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      locked: map['locked'] == null ? null : (map['locked'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      personalizationSettings: map['personalizationSettings'] == null ? null : (CxAgentPersonalizationSettings.fromMap((map['personalizationSettings'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      satisfiesPzi: map['satisfiesPzi'] == null ? null : (map['satisfiesPzi'] as bool).input(),
      satisfiesPzs: map['satisfiesPzs'] == null ? null : (map['satisfiesPzs'] as bool).input(),
      securitySettings: map['securitySettings'] == null ? null : (map['securitySettings'] as String).input(),
      speechToTextSettings: map['speechToTextSettings'] == null ? null : (CxAgentSpeechToTextSettings.fromMap((map['speechToTextSettings'] as Map).cast<String, dynamic>())).input(),
      startFlow: map['startFlow'] == null ? null : (map['startFlow'] as String).input(),
      startPlaybook: map['startPlaybook'] == null ? null : (map['startPlaybook'] as String).input(),
      supportedLanguageCodes: map['supportedLanguageCodes'] == null ? null : ((map['supportedLanguageCodes'] as List).cast<String>()).input(),
      textToSpeechSettings: map['textToSpeechSettings'] == null ? null : (CxAgentTextToSpeechSettings.fromMap((map['textToSpeechSettings'] as Map).cast<String, dynamic>())).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
    );
  }
}

