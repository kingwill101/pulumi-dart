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

/// {@template pulumi_diagflow_cx_agent_cx_agent_args_doc}
/// The set of arguments for CxAgent.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_agent_cx_agent_args_doc}
class CxAgentArgs {
  /// Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent-&gt;Flow-&gt;Page-&gt;Fulfillment/Parameter.
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
  final pulumi.Input<String> defaultLanguageCode;
  final pulumi.Input<bool>? deleteChatEngineOnDestroy;
  /// The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;
  /// The human-readable name of the agent, unique within the location.
  final pulumi.Input<String> displayName;
  /// Enable training multi-lingual models for this agent. These models will be trained on all the languages supported by the agent.
  final pulumi.Input<bool>? enableMultiLanguageTraining;
  /// Indicates if automatic spell correction is enabled in detect intent requests.
  final pulumi.Input<bool>? enableSpellCorrection;
  /// (Optional, Deprecated)
  /// Determines whether this agent should log conversation queries.
  ///
  /// &gt; **Warning:** `enable_stackdriver_logging` is deprecated and will be removed in a future major release. Please use `advanced_settings.logging_settings.enable_stackdriver_logging`instead.
  final pulumi.Input<bool>? enableStackdriverLogging;
  /// Gen App Builder-related agent-level settings.
  /// Structure is documented below.
  final pulumi.Input<CxAgentGenAppBuilderSettings>? genAppBuilderSettings;
  /// Git integration settings for this agent.
  /// Structure is documented below.
  final pulumi.Input<CxAgentGitIntegrationSettings>? gitIntegrationSettings;
  /// The name of the location this agent is located in.
  /// &gt; **Note:** The first time you are deploying an Agent in your project you must configure location settings.
  /// This is a one time step but at the moment you can only [configure location settings](https://cloud.google.com/dialogflow/cx/docs/concept/region#location-settings) via the Dialogflow CX console.
  /// Another options is to use global location so you don't need to manually configure location settings.
  final pulumi.Input<String> location;
  /// Indicates whether the agent is locked for changes. If the agent is locked, modifications to the agent will be rejected except for [agents.restore][].
  final pulumi.Input<bool>? locked;
  /// Settings for end user personalization.
  /// Structure is documented below.
  final pulumi.Input<CxAgentPersonalizationSettings>? personalizationSettings;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;.
  final pulumi.Input<String>? securitySettings;
  /// Settings related to speech recognition.
  /// Structure is documented below.
  final pulumi.Input<CxAgentSpeechToTextSettings>? speechToTextSettings;
  /// Name of the start playbook in this agent. A start playbook will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: **projects/&lt;ProjectID&gt;/locations/&lt;LocationID&gt;/agents/&lt;AgentID&gt;/playbooks/&lt;PlaybookID&gt;**. Currently only the default playbook with id "00000000-0000-0000-0000-000000000000" is allowed.
  final pulumi.Input<String>? startPlaybook;
  /// The list of all languages supported by this agent (except for the default_language_code).
  final pulumi.Input<List<String>>? supportedLanguageCodes;
  /// Settings related to speech synthesizing.
  /// Structure is documented below.
  final pulumi.Input<CxAgentTextToSpeechSettings>? textToSpeechSettings;
  /// The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
  /// Europe/Paris.
  final pulumi.Input<String> timeZone;

  /// Creates a new [CxAgentArgs].
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
  /// [personalizationSettings] Settings for end user personalization.
  /// [project] The ID of the project in which the resource belongs.
  /// [securitySettings] Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;.
  /// [speechToTextSettings] Settings related to speech recognition.
  /// [startPlaybook] Name of the start playbook in this agent. A start playbook will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: **projects/&lt;ProjectID&gt;/locations/&lt;LocationID&gt;/agents/&lt;AgentID&gt;/playbooks/&lt;PlaybookID&gt;**. Currently only the default playbook with id "00000000-0000-0000-0000-000000000000" is allowed.
  /// [supportedLanguageCodes] The list of all languages supported by this agent (except for the default_language_code).
  /// [textToSpeechSettings] Settings related to speech synthesizing.
  /// [timeZone] The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
  CxAgentArgs({
    this.advancedSettings,
    this.answerFeedbackSettings,
    this.avatarUri,
    this.clientCertificateSettings,
    required this.defaultLanguageCode,
    this.deleteChatEngineOnDestroy,
    this.description,
    required this.displayName,
    this.enableMultiLanguageTraining,
    this.enableSpellCorrection,
    this.enableStackdriverLogging,
    this.genAppBuilderSettings,
    this.gitIntegrationSettings,
    required this.location,
    this.locked,
    this.personalizationSettings,
    this.project,
    this.securitySettings,
    this.speechToTextSettings,
    this.startPlaybook,
    this.supportedLanguageCodes,
    this.textToSpeechSettings,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentAdvancedSettings, Map<String, dynamic>>(advancedSettings, (value) => value.toMap()),
      'answerFeedbackSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentAnswerFeedbackSettings, Map<String, dynamic>>(answerFeedbackSettings, (value) => value.toMap()),
      'avatarUri': ?avatarUri,
      'clientCertificateSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentClientCertificateSettings, Map<String, dynamic>>(clientCertificateSettings, (value) => value.toMap()),
      'defaultLanguageCode': defaultLanguageCode,
      'deleteChatEngineOnDestroy': ?deleteChatEngineOnDestroy,
      'description': ?description,
      'displayName': displayName,
      'enableMultiLanguageTraining': ?enableMultiLanguageTraining,
      'enableSpellCorrection': ?enableSpellCorrection,
      'enableStackdriverLogging': ?enableStackdriverLogging,
      'genAppBuilderSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentGenAppBuilderSettings, Map<String, dynamic>>(genAppBuilderSettings, (value) => value.toMap()),
      'gitIntegrationSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentGitIntegrationSettings, Map<String, dynamic>>(gitIntegrationSettings, (value) => value.toMap()),
      'location': location,
      'locked': ?locked,
      'personalizationSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentPersonalizationSettings, Map<String, dynamic>>(personalizationSettings, (value) => value.toMap()),
      'project': ?project,
      'securitySettings': ?securitySettings,
      'speechToTextSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentSpeechToTextSettings, Map<String, dynamic>>(speechToTextSettings, (value) => value.toMap()),
      'startPlaybook': ?startPlaybook,
      'supportedLanguageCodes': ?supportedLanguageCodes,
      'textToSpeechSettings': ?pulumi.Input.mapOptionalInputValue<CxAgentTextToSpeechSettings, Map<String, dynamic>>(textToSpeechSettings, (value) => value.toMap()),
      'timeZone': timeZone,
    };
  }

  factory CxAgentArgs.fromMap(Map<String, dynamic> map) {
    return CxAgentArgs(
      advancedSettings: (() { final guardedValue = map['advancedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentAdvancedSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      answerFeedbackSettings: (() { final guardedValue = map['answerFeedbackSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentAnswerFeedbackSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      avatarUri: (() { final guardedValue = map['avatarUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificateSettings: (() { final guardedValue = map['clientCertificateSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentClientCertificateSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultLanguageCode: pulumi.Input.fromValue(map['defaultLanguageCode'] as String),
      deleteChatEngineOnDestroy: (() { final guardedValue = map['deleteChatEngineOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enableMultiLanguageTraining: (() { final guardedValue = map['enableMultiLanguageTraining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSpellCorrection: (() { final guardedValue = map['enableSpellCorrection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableStackdriverLogging: (() { final guardedValue = map['enableStackdriverLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      genAppBuilderSettings: (() { final guardedValue = map['genAppBuilderSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentGenAppBuilderSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gitIntegrationSettings: (() { final guardedValue = map['gitIntegrationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentGitIntegrationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      personalizationSettings: (() { final guardedValue = map['personalizationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentPersonalizationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securitySettings: (() { final guardedValue = map['securitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      speechToTextSettings: (() { final guardedValue = map['speechToTextSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentSpeechToTextSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startPlaybook: (() { final guardedValue = map['startPlaybook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportedLanguageCodes: (() { final guardedValue = map['supportedLanguageCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      textToSpeechSettings: (() { final guardedValue = map['textToSpeechSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentTextToSpeechSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}

