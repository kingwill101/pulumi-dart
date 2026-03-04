// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_context.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message.dart';
import 'google_cloud_dialogflow_v2beta1_intent_parameter.dart';
import 'google_cloud_dialogflow_v2beta1_intent_training_phrase.dart';
import 'intent_default_response_platforms_item_dialogflow_v2beta1.dart';
import 'intent_webhook_state_dialogflow_v2beta1.dart';

/// {@template pulumi_dialogflow_v2beta1_intent_dialogflow_v2beta1_args_doc}
/// The set of arguments for Intent.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_intent_dialogflow_v2beta1_args_doc}
class IntentDialogflowV2beta1Args {
  /// Optional. The name of the action associated with the intent. Note: The action name must not contain whitespaces.
  final pulumi.Input<String>? action;

  /// Optional. The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  final pulumi.Input<List<IntentDefaultResponsePlatformsItemDialogflowV2beta1>>?
  defaultResponsePlatforms;

  /// The name of this intent.
  final pulumi.Input<String> displayName;

  /// Optional. Indicates that this intent ends an interaction. Some integrations (e.g., Actions on Google or Dialogflow phone gateway) use this information to close interaction with an end user. Default is false.
  final pulumi.Input<bool>? endInteraction;

  /// Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. Event names are limited to 150 characters.
  final pulumi.Input<List<String>>? events;

  /// Optional. The list of context names required for this intent to be triggered. Formats: - `projects//agent/sessions/-/contexts/` - `projects//locations//agent/sessions/-/contexts/`
  final pulumi.Input<List<String>>? inputContextNames;

  /// Optional. The resource view to apply to the returned intent.
  final pulumi.Input<String>? intentView;

  /// Optional. Indicates whether this is a fallback intent.
  final pulumi.Input<bool>? isFallback;

  /// Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  final pulumi.Input<String>? languageCode;

  /// Optional. Indicates that a live agent should be brought in to handle the interaction with the user. In most cases, when you set this flag to true, you would also want to set end_interaction to true as well. Default is false.
  final pulumi.Input<bool>? liveAgentHandoff;
  final pulumi.Input<String>? location;

  /// Optional. The collection of rich messages corresponding to the `Response` field in the Dialogflow console.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessage>>? messages;

  /// Optional. Indicates whether Machine Learning is disabled for the intent. Note: If `ml_disabled` setting is set to true, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off.
  final pulumi.Input<bool>? mlDisabled;

  /// Optional. Indicates whether Machine Learning is enabled for the intent. Note: If `ml_enabled` setting is set to false, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off. DEPRECATED! Please use `ml_disabled` field instead. NOTE: If both `ml_enabled` and `ml_disabled` are either not set or false, then the default value is determined as follows: - Before April 15th, 2018 the default is: ml_enabled = false / ml_disabled = true. - After April 15th, 2018 the default is: ml_enabled = true / ml_disabled = false.
  final pulumi.Input<bool>? mlEnabled;

  /// Optional. The unique identifier of this intent. Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Supported formats: - `projects//agent/intents/` - `projects//locations//agent/intents/`
  final pulumi.Input<String>? name;

  /// Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the `lifespan_count` to 0 will reset the context when the intent is matched. Format: `projects//agent/sessions/-/contexts/`.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1Context>>? outputContexts;

  /// Optional. The collection of parameters associated with the intent.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentParameter>>?
  parameters;

  /// Optional. The unique identifier of the parent intent in the chain of followup intents. You can set this field when creating an intent, for example with CreateIntent or BatchUpdateIntents, in order to make this intent a followup intent. It identifies the parent followup intent. Format: `projects//agent/intents/`.
  final pulumi.Input<String>? parentFollowupIntentName;

  /// Optional. The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;

  /// Optional. Indicates whether to delete all contexts in the current session when this intent is matched.
  final pulumi.Input<bool>? resetContexts;

  /// Optional. The collection of examples that the agent is trained on.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentTrainingPhrase>>?
  trainingPhrases;

  /// Optional. Indicates whether webhooks are enabled for the intent.
  final pulumi.Input<IntentWebhookStateDialogflowV2beta1>? webhookState;

  /// Creates a new [IntentDialogflowV2beta1Args].
  /// [action] Optional. The name of the action associated with the intent. Note: The action name must not contain whitespaces.
  /// [defaultResponsePlatforms] Optional. The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  /// [displayName] The name of this intent.
  /// [endInteraction] Optional. Indicates that this intent ends an interaction. Some integrations (e.g., Actions on Google or Dialogflow phone gateway) use this information to close interaction with an end user. Default is false.
  /// [events] Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. Event names are limited to 150 characters.
  /// [inputContextNames] Optional. The list of context names required for this intent to be triggered. Formats: - `projects//agent/sessions/-/contexts/` - `projects//locations//agent/sessions/-/contexts/`
  /// [intentView] Optional. The resource view to apply to the returned intent.
  /// [isFallback] Optional. Indicates whether this is a fallback intent.
  /// [languageCode] Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  /// [liveAgentHandoff] Optional. Indicates that a live agent should be brought in to handle the interaction with the user. In most cases, when you set this flag to true, you would also want to set end_interaction to true as well. Default is false.
  /// [location] Optional.
  /// [messages] Optional. The collection of rich messages corresponding to the `Response` field in the Dialogflow console.
  /// [mlDisabled] Optional. Indicates whether Machine Learning is disabled for the intent. Note: If `ml_disabled` setting is set to true, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off.
  /// [mlEnabled] Optional. Indicates whether Machine Learning is enabled for the intent. Note: If `ml_enabled` setting is set to false, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off. DEPRECATED! Please use `ml_disabled` field instead. NOTE: If both `ml_enabled` and `ml_disabled` are either not set or false, then the default value is determined as follows: - Before April 15th, 2018 the default is: ml_enabled = false / ml_disabled = true. - After April 15th, 2018 the default is: ml_enabled = true / ml_disabled = false.
  /// [name] Optional. The unique identifier of this intent. Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Supported formats: - `projects//agent/intents/` - `projects//locations//agent/intents/`
  /// [outputContexts] Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the `lifespan_count` to 0 will reset the context when the intent is matched. Format: `projects//agent/sessions/-/contexts/`.
  /// [parameters] Optional. The collection of parameters associated with the intent.
  /// [parentFollowupIntentName] Optional. The unique identifier of the parent intent in the chain of followup intents. You can set this field when creating an intent, for example with CreateIntent or BatchUpdateIntents, in order to make this intent a followup intent. It identifies the parent followup intent. Format: `projects//agent/intents/`.
  /// [priority] Optional. The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  /// [project] Optional.
  /// [resetContexts] Optional. Indicates whether to delete all contexts in the current session when this intent is matched.
  /// [trainingPhrases] Optional. The collection of examples that the agent is trained on.
  /// [webhookState] Optional. Indicates whether webhooks are enabled for the intent.
  IntentDialogflowV2beta1Args({
    this.action,
    this.defaultResponsePlatforms,
    required this.displayName,
    this.endInteraction,
    this.events,
    this.inputContextNames,
    this.intentView,
    this.isFallback,
    this.languageCode,
    this.liveAgentHandoff,
    this.location,
    this.messages,
    this.mlDisabled,
    this.mlEnabled,
    this.name,
    this.outputContexts,
    this.parameters,
    this.parentFollowupIntentName,
    this.priority,
    this.project,
    this.resetContexts,
    this.trainingPhrases,
    this.webhookState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'defaultResponsePlatforms':
          ?pulumi.Input.mapOptionalInputValue<
            List<IntentDefaultResponsePlatformsItemDialogflowV2beta1>,
            List<String>
          >(
            defaultResponsePlatforms,
            (value) =>
                pulumi.Input.encodeList<
                  IntentDefaultResponsePlatformsItemDialogflowV2beta1,
                  String
                >(value, (value) => value.wireValue),
          ),
      'displayName': displayName,
      'endInteraction': ?endInteraction,
      'events': ?events,
      'inputContextNames': ?inputContextNames,
      'intentView': ?intentView,
      'isFallback': ?isFallback,
      'languageCode': ?languageCode,
      'liveAgentHandoff': ?liveAgentHandoff,
      'location': ?location,
      'messages':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudDialogflowV2beta1IntentMessage>,
            List<Map<String, dynamic>>
          >(
            messages,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowV2beta1IntentMessage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'mlDisabled': ?mlDisabled,
      'mlEnabled': ?mlEnabled,
      'name': ?name,
      'outputContexts':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudDialogflowV2beta1Context>,
            List<Map<String, dynamic>>
          >(
            outputContexts,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowV2beta1Context,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudDialogflowV2beta1IntentParameter>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowV2beta1IntentParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'parentFollowupIntentName': ?parentFollowupIntentName,
      'priority': ?priority,
      'project': ?project,
      'resetContexts': ?resetContexts,
      'trainingPhrases':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudDialogflowV2beta1IntentTrainingPhrase>,
            List<Map<String, dynamic>>
          >(
            trainingPhrases,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowV2beta1IntentTrainingPhrase,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'webhookState':
          ?pulumi.Input.mapOptionalInputValue<
            IntentWebhookStateDialogflowV2beta1,
            String
          >(webhookState, (value) => value.wireValue),
    };
  }

  factory IntentDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return IntentDialogflowV2beta1Args(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultResponsePlatforms: (() {
        final guardedValue = map['defaultResponsePlatforms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            IntentDefaultResponsePlatformsItemDialogflowV2beta1
          >(
            guardedValue,
            (value) =>
                IntentDefaultResponsePlatformsItemDialogflowV2beta1.fromValue(
                  value as String,
                ),
          ),
        );
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      endInteraction: (() {
        final guardedValue = map['endInteraction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      events: (() {
        final guardedValue = map['events'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      inputContextNames: (() {
        final guardedValue = map['inputContextNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      intentView: (() {
        final guardedValue = map['intentView'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isFallback: (() {
        final guardedValue = map['isFallback'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      languageCode: (() {
        final guardedValue = map['languageCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      liveAgentHandoff: (() {
        final guardedValue = map['liveAgentHandoff'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      messages: (() {
        final guardedValue = map['messages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessage>(
            guardedValue,
            (value) => GoogleCloudDialogflowV2beta1IntentMessage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      mlDisabled: (() {
        final guardedValue = map['mlDisabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      mlEnabled: (() {
        final guardedValue = map['mlEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputContexts: (() {
        final guardedValue = map['outputContexts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1Context>(
            guardedValue,
            (value) => GoogleCloudDialogflowV2beta1Context.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentParameter>(
            guardedValue,
            (value) => GoogleCloudDialogflowV2beta1IntentParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      parentFollowupIntentName: (() {
        final guardedValue = map['parentFollowupIntentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resetContexts: (() {
        final guardedValue = map['resetContexts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      trainingPhrases: (() {
        final guardedValue = map['trainingPhrases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            GoogleCloudDialogflowV2beta1IntentTrainingPhrase
          >(
            guardedValue,
            (value) => GoogleCloudDialogflowV2beta1IntentTrainingPhrase.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      webhookState: (() {
        final guardedValue = map['webhookState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntentWebhookStateDialogflowV2beta1.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
