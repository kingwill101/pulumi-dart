import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_dialogflow_v3beta1_args.dart';
import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_agent_answer_feedback_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_agent_gen_app_builder_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_agent_git_integration_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_speech_to_text_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_text_to_speech_settings_response.dart';

/// Creates an agent in the specified location. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
class AgentDialogflowV3beta1 extends pulumi.CustomResource {
  /// Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse
  >
  advancedSettings;

  /// Optional. Answer feedback collection settings.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettingsResponse
  >
  answerFeedbackSettings;

  /// The URI of the agent's avatar. Avatars are used throughout the Dialogflow console and in the self-hosted [Web Demo](https://cloud.google.com/dialogflow/docs/integrations/web-demo) integration.
  late final pulumi.Output<String> avatarUri;

  /// Immutable. The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. This field cannot be set by the Agents.UpdateAgent method.
  late final pulumi.Output<String> defaultLanguageCode;

  /// The description of the agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final pulumi.Output<String> description;

  /// The human-readable name of the agent, unique within the location.
  late final pulumi.Output<String> displayName;

  /// Indicates if automatic spell correction is enabled in detect intent requests.
  late final pulumi.Output<bool> enableSpellCorrection;

  /// Indicates if stackdriver logging is enabled for the agent. Please use agent.advanced_settings instead.
  late final pulumi.Output<bool> enableStackdriverLogging;

  /// Gen App Builder-related agent-level settings.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettingsResponse
  >
  genAppBuilderSettings;

  /// Git integration settings for this agent.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsResponse
  >
  gitIntegrationSettings;
  late final pulumi.Output<String> location;

  /// Indicates whether the agent is locked for changes. If the agent is locked, modifications to the agent will be rejected except for RestoreAgent.
  late final pulumi.Output<bool> locked;

  /// The unique identifier of the agent. Required for the Agents.UpdateAgent method. Agents.CreateAgent populates the name automatically. Format: `projects//locations//agents/`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Name of the SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  late final pulumi.Output<String> securitySettings;

  /// Speech recognition related settings.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse
  >
  speechToTextSettings;

  /// Immutable. Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: `projects//locations//agents//flows/`.
  late final pulumi.Output<String> startFlow;

  /// The list of all languages supported by the agent (except for the `default_language_code`).
  late final pulumi.Output<List<String>> supportedLanguageCodes;

  /// Settings on instructing the speech synthesizer on how to generate the output audio content.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3beta1TextToSpeechSettingsResponse
  >
  textToSpeechSettings;

  /// The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  late final pulumi.Output<String> timeZone;

  /// Creates a new [AgentDialogflowV3beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentDialogflowV3beta1]. {@macro pulumi_dialogflow_v3beta1_agent_dialogflow_v3beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentDialogflowV3beta1(
    String name, {
    AgentDialogflowV3beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dialogflow/v3beta1:Agent',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    advancedSettings =
        registerOutput<GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse>(
          'advancedSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    answerFeedbackSettings =
        registerOutput<
          GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettingsResponse
        >(
          'answerFeedbackSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3beta1AgentAnswerFeedbackSettingsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    avatarUri = registerOutput<String>('avatarUri');
    defaultLanguageCode = registerOutput<String>('defaultLanguageCode');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    enableSpellCorrection = registerOutput<bool>('enableSpellCorrection');
    enableStackdriverLogging = registerOutput<bool>('enableStackdriverLogging');
    genAppBuilderSettings =
        registerOutput<
          GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettingsResponse
        >(
          'genAppBuilderSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3beta1AgentGenAppBuilderSettingsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    gitIntegrationSettings =
        registerOutput<
          GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsResponse
        >(
          'gitIntegrationSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    location = registerOutput<String>('location');
    locked = registerOutput<bool>('locked');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    securitySettings = registerOutput<String>('securitySettings');
    speechToTextSettings =
        registerOutput<
          GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse
        >(
          'speechToTextSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    startFlow = registerOutput<String>('startFlow');
    supportedLanguageCodes = registerOutput<List<String>>(
      'supportedLanguageCodes',
    );
    textToSpeechSettings =
        registerOutput<
          GoogleCloudDialogflowCxV3beta1TextToSpeechSettingsResponse
        >(
          'textToSpeechSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3beta1TextToSpeechSettingsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    timeZone = registerOutput<String>('timeZone');
  }
}
