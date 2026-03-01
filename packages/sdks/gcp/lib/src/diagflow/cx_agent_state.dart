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
    pulumi.Output<CxAgentAdvancedSettings>? advancedSettings,
    pulumi.Output<CxAgentAnswerFeedbackSettings>? answerFeedbackSettings,
    pulumi.Output<String>? avatarUri,
    pulumi.Output<CxAgentClientCertificateSettings>? clientCertificateSettings,
    pulumi.Output<String>? defaultLanguageCode,
    pulumi.Output<bool>? deleteChatEngineOnDestroy,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enableMultiLanguageTraining,
    pulumi.Output<bool>? enableSpellCorrection,
    pulumi.Output<bool>? enableStackdriverLogging,
    pulumi.Output<CxAgentGenAppBuilderSettings>? genAppBuilderSettings,
    pulumi.Output<CxAgentGitIntegrationSettings>? gitIntegrationSettings,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? locked,
    pulumi.Output<String>? name,
    pulumi.Output<CxAgentPersonalizationSettings>? personalizationSettings,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? satisfiesPzi,
    pulumi.Output<bool>? satisfiesPzs,
    pulumi.Output<String>? securitySettings,
    pulumi.Output<CxAgentSpeechToTextSettings>? speechToTextSettings,
    pulumi.Output<String>? startFlow,
    pulumi.Output<String>? startPlaybook,
    pulumi.Output<List<String>>? supportedLanguageCodes,
    pulumi.Output<CxAgentTextToSpeechSettings>? textToSpeechSettings,
    pulumi.Output<String>? timeZone,
  }) :
      advancedSettings = pulumi.Input.asOptionalInput<CxAgentAdvancedSettings>(advancedSettings),
      answerFeedbackSettings = pulumi.Input.asOptionalInput<CxAgentAnswerFeedbackSettings>(answerFeedbackSettings),
      avatarUri = pulumi.Input.asOptionalInput<String>(avatarUri),
      clientCertificateSettings = pulumi.Input.asOptionalInput<CxAgentClientCertificateSettings>(clientCertificateSettings),
      defaultLanguageCode = pulumi.Input.asOptionalInput<String>(defaultLanguageCode),
      deleteChatEngineOnDestroy = pulumi.Input.asOptionalInput<bool>(deleteChatEngineOnDestroy),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enableMultiLanguageTraining = pulumi.Input.asOptionalInput<bool>(enableMultiLanguageTraining),
      enableSpellCorrection = pulumi.Input.asOptionalInput<bool>(enableSpellCorrection),
      enableStackdriverLogging = pulumi.Input.asOptionalInput<bool>(enableStackdriverLogging),
      genAppBuilderSettings = pulumi.Input.asOptionalInput<CxAgentGenAppBuilderSettings>(genAppBuilderSettings),
      gitIntegrationSettings = pulumi.Input.asOptionalInput<CxAgentGitIntegrationSettings>(gitIntegrationSettings),
      location = pulumi.Input.asOptionalInput<String>(location),
      locked = pulumi.Input.asOptionalInput<bool>(locked),
      name = pulumi.Input.asOptionalInput<String>(name),
      personalizationSettings = pulumi.Input.asOptionalInput<CxAgentPersonalizationSettings>(personalizationSettings),
      project = pulumi.Input.asOptionalInput<String>(project),
      satisfiesPzi = pulumi.Input.asOptionalInput<bool>(satisfiesPzi),
      satisfiesPzs = pulumi.Input.asOptionalInput<bool>(satisfiesPzs),
      securitySettings = pulumi.Input.asOptionalInput<String>(securitySettings),
      speechToTextSettings = pulumi.Input.asOptionalInput<CxAgentSpeechToTextSettings>(speechToTextSettings),
      startFlow = pulumi.Input.asOptionalInput<String>(startFlow),
      startPlaybook = pulumi.Input.asOptionalInput<String>(startPlaybook),
      supportedLanguageCodes = pulumi.Input.asOptionalInput<List<String>>(supportedLanguageCodes),
      textToSpeechSettings = pulumi.Input.asOptionalInput<CxAgentTextToSpeechSettings>(textToSpeechSettings),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

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
      advancedSettings: map['advancedSettings'] == null ? null : pulumi.Output.create<CxAgentAdvancedSettings>(CxAgentAdvancedSettings.fromMap((map['advancedSettings'] as Map).cast<String, dynamic>())),
      answerFeedbackSettings: map['answerFeedbackSettings'] == null ? null : pulumi.Output.create<CxAgentAnswerFeedbackSettings>(CxAgentAnswerFeedbackSettings.fromMap((map['answerFeedbackSettings'] as Map).cast<String, dynamic>())),
      avatarUri: map['avatarUri'] == null ? null : pulumi.Output.create<String>(map['avatarUri'] as String),
      clientCertificateSettings: map['clientCertificateSettings'] == null ? null : pulumi.Output.create<CxAgentClientCertificateSettings>(CxAgentClientCertificateSettings.fromMap((map['clientCertificateSettings'] as Map).cast<String, dynamic>())),
      defaultLanguageCode: map['defaultLanguageCode'] == null ? null : pulumi.Output.create<String>(map['defaultLanguageCode'] as String),
      deleteChatEngineOnDestroy: map['deleteChatEngineOnDestroy'] == null ? null : pulumi.Output.create<bool>(map['deleteChatEngineOnDestroy'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enableMultiLanguageTraining: map['enableMultiLanguageTraining'] == null ? null : pulumi.Output.create<bool>(map['enableMultiLanguageTraining'] as bool),
      enableSpellCorrection: map['enableSpellCorrection'] == null ? null : pulumi.Output.create<bool>(map['enableSpellCorrection'] as bool),
      enableStackdriverLogging: map['enableStackdriverLogging'] == null ? null : pulumi.Output.create<bool>(map['enableStackdriverLogging'] as bool),
      genAppBuilderSettings: map['genAppBuilderSettings'] == null ? null : pulumi.Output.create<CxAgentGenAppBuilderSettings>(CxAgentGenAppBuilderSettings.fromMap((map['genAppBuilderSettings'] as Map).cast<String, dynamic>())),
      gitIntegrationSettings: map['gitIntegrationSettings'] == null ? null : pulumi.Output.create<CxAgentGitIntegrationSettings>(CxAgentGitIntegrationSettings.fromMap((map['gitIntegrationSettings'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      locked: map['locked'] == null ? null : pulumi.Output.create<bool>(map['locked'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      personalizationSettings: map['personalizationSettings'] == null ? null : pulumi.Output.create<CxAgentPersonalizationSettings>(CxAgentPersonalizationSettings.fromMap((map['personalizationSettings'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      satisfiesPzi: map['satisfiesPzi'] == null ? null : pulumi.Output.create<bool>(map['satisfiesPzi'] as bool),
      satisfiesPzs: map['satisfiesPzs'] == null ? null : pulumi.Output.create<bool>(map['satisfiesPzs'] as bool),
      securitySettings: map['securitySettings'] == null ? null : pulumi.Output.create<String>(map['securitySettings'] as String),
      speechToTextSettings: map['speechToTextSettings'] == null ? null : pulumi.Output.create<CxAgentSpeechToTextSettings>(CxAgentSpeechToTextSettings.fromMap((map['speechToTextSettings'] as Map).cast<String, dynamic>())),
      startFlow: map['startFlow'] == null ? null : pulumi.Output.create<String>(map['startFlow'] as String),
      startPlaybook: map['startPlaybook'] == null ? null : pulumi.Output.create<String>(map['startPlaybook'] as String),
      supportedLanguageCodes: map['supportedLanguageCodes'] == null ? null : pulumi.Output.create<List<String>>((map['supportedLanguageCodes'] as List).cast<String>()),
      textToSpeechSettings: map['textToSpeechSettings'] == null ? null : pulumi.Output.create<CxAgentTextToSpeechSettings>(CxAgentTextToSpeechSettings.fromMap((map['textToSpeechSettings'] as Map).cast<String, dynamic>())),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
    );
  }
}

