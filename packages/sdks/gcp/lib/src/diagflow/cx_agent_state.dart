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
  final pulumi.Input<String>? defaultLanguageCode;
  /// If set to `true`, Terraform will delete the chat engine associated with the agent when the agent is destroyed.
  /// Otherwise, the chat engine will persist.
  ///
  /// This virtual field addresses a critical dependency chain: `agent` &gt; `engine` &gt; `data store`. The chat engine is automatically
  /// provisioned when a data store is linked to the agent, meaning Terraform doesn't have direct control over its lifecycle as a managed
  /// resource. This creates a problem when both the agent and data store are managed by Terraform and need to be destroyed. Without
  /// deleteChatEngineOnDestroy set to true, the data store's deletion would fail because the unmanaged chat engine would still be
  /// using it. This setting ensures that the entire dependency chain can be properly torn down.
  /// See `mmv1/templates/terraform/examples/dialogflowcx_tool_data_store.tf.tmpl` as an example.
  ///
  /// Data store can be linked to an agent through the `knowledgeConnectorSettings` field of a [flow](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows#resource:-flow)
  /// or a [page](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages#resource:-page)
  /// or the `dataStoreSpec` field of a [tool](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools#resource:-tool).
  /// The ID of the implicitly created engine is stored in the `genAppBuilderSettings` field of the [agent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents#resource:-agent).
  final pulumi.Input<bool>? deleteChatEngineOnDestroy;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// &gt; **Warning:** `enableStackdriverLogging` is deprecated and will be removed in a future major release. Please use `advanced_settings.logging_settings.enable_stackdriver_logging`instead.
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
  /// Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;.
  final pulumi.Input<String>? securitySettings;
  /// Settings related to speech recognition.
  /// Structure is documented below.
  final pulumi.Input<CxAgentSpeechToTextSettings>? speechToTextSettings;
  /// Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.
  final pulumi.Input<String>? startFlow;
  /// Name of the start playbook in this agent. A start playbook will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: **projects/&lt;ProjectID&gt;/locations/&lt;LocationID&gt;/agents/&lt;AgentID&gt;/playbooks/&lt;PlaybookID&gt;**. Currently only the default playbook with id "00000000-0000-0000-0000-000000000000" is allowed.
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
  /// [deleteChatEngineOnDestroy] If set to `true`, Terraform will delete the chat engine associated with the agent when the agent is destroyed.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  /// [securitySettings] Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;.
  /// [speechToTextSettings] Settings related to speech recognition.
  /// [startFlow] Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.
  /// [startPlaybook] Name of the start playbook in this agent. A start playbook will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: **projects/&lt;ProjectID&gt;/locations/&lt;LocationID&gt;/agents/&lt;AgentID&gt;/playbooks/&lt;PlaybookID&gt;**. Currently only the default playbook with id "00000000-0000-0000-0000-000000000000" is allowed.
  /// [supportedLanguageCodes] The list of all languages supported by this agent (except for the default_language_code).
  /// [textToSpeechSettings] Settings related to speech synthesizing.
  /// [timeZone] The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
  const CxAgentState({
    this.advancedSettings,
    this.answerFeedbackSettings,
    this.avatarUri,
    this.clientCertificateSettings,
    this.defaultLanguageCode,
    this.deleteChatEngineOnDestroy,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      advancedSettings: (() { final guardedValue = map['advancedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentAdvancedSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      answerFeedbackSettings: (() { final guardedValue = map['answerFeedbackSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentAnswerFeedbackSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      avatarUri: (() { final guardedValue = map['avatarUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificateSettings: (() { final guardedValue = map['clientCertificateSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentClientCertificateSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultLanguageCode: (() { final guardedValue = map['defaultLanguageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteChatEngineOnDestroy: (() { final guardedValue = map['deleteChatEngineOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableMultiLanguageTraining: (() { final guardedValue = map['enableMultiLanguageTraining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSpellCorrection: (() { final guardedValue = map['enableSpellCorrection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableStackdriverLogging: (() { final guardedValue = map['enableStackdriverLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      genAppBuilderSettings: (() { final guardedValue = map['genAppBuilderSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentGenAppBuilderSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gitIntegrationSettings: (() { final guardedValue = map['gitIntegrationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentGitIntegrationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      personalizationSettings: (() { final guardedValue = map['personalizationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentPersonalizationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      satisfiesPzi: (() { final guardedValue = map['satisfiesPzi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securitySettings: (() { final guardedValue = map['securitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      speechToTextSettings: (() { final guardedValue = map['speechToTextSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentSpeechToTextSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startFlow: (() { final guardedValue = map['startFlow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startPlaybook: (() { final guardedValue = map['startPlaybook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportedLanguageCodes: (() { final guardedValue = map['supportedLanguageCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      textToSpeechSettings: (() { final guardedValue = map['textToSpeechSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxAgentTextToSpeechSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
