// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_context.dart';
import 'google_cloud_dialogflow_v2_intent_message.dart';
import 'google_cloud_dialogflow_v2_intent_parameter.dart';
import 'google_cloud_dialogflow_v2_intent_training_phrase.dart';
import 'intent_default_response_platforms_item.dart';
import 'intent_webhook_state.dart';

/// {@template pulumi_dialogflow_v2_intent_args_doc}
/// The set of arguments for Intent.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_intent_args_doc}
class IntentArgs {
  /// Optional. The name of the action associated with the intent. Note: The action name must not contain whitespaces.
  final pulumi.Input<String>? action;
  /// Optional. The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  final pulumi.Input<List<IntentDefaultResponsePlatformsItem>>? defaultResponsePlatforms;
  /// The name of this intent.
  final pulumi.Input<String> displayName;
  /// Optional. Indicates that this intent ends an interaction. Some integrations (e.g., Actions on Google or Dialogflow phone gateway) use this information to close interaction with an end user. Default is false.
  final pulumi.Input<bool>? endInteraction;
  /// Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. Event names are limited to 150 characters.
  final pulumi.Input<List<String>>? events;
  /// Optional. The list of context names required for this intent to be triggered. Format: `projects//agent/sessions/-/contexts/`.
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
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessage>>? messages;
  /// Optional. Indicates whether Machine Learning is disabled for the intent. Note: If `ml_disabled` setting is set to true, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off.
  final pulumi.Input<bool>? mlDisabled;
  /// Optional. The unique identifier of this intent. Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Format: `projects//agent/intents/`.
  final pulumi.Input<String>? name;
  /// Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the `lifespan_count` to 0 will reset the context when the intent is matched. Format: `projects//agent/sessions/-/contexts/`.
  final pulumi.Input<List<GoogleCloudDialogflowV2Context>>? outputContexts;
  /// Optional. The collection of parameters associated with the intent.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentParameter>>? parameters;
  /// Read-only after creation. The unique identifier of the parent intent in the chain of followup intents. You can set this field when creating an intent, for example with CreateIntent or BatchUpdateIntents, in order to make this intent a followup intent. It identifies the parent followup intent. Format: `projects//agent/intents/`.
  final pulumi.Input<String>? parentFollowupIntentName;
  /// Optional. The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;
  /// Optional. Indicates whether to delete all contexts in the current session when this intent is matched.
  final pulumi.Input<bool>? resetContexts;
  /// Optional. The collection of examples that the agent is trained on.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentTrainingPhrase>>? trainingPhrases;
  /// Optional. Indicates whether webhooks are enabled for the intent.
  final pulumi.Input<IntentWebhookState>? webhookState;

  /// Creates a new [IntentArgs].
  /// [action] Optional. The name of the action associated with the intent. Note: The action name must not contain whitespaces.
  /// [defaultResponsePlatforms] Optional. The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  /// [displayName] The name of this intent.
  /// [endInteraction] Optional. Indicates that this intent ends an interaction. Some integrations (e.g., Actions on Google or Dialogflow phone gateway) use this information to close interaction with an end user. Default is false.
  /// [events] Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. Event names are limited to 150 characters.
  /// [inputContextNames] Optional. The list of context names required for this intent to be triggered. Format: `projects//agent/sessions/-/contexts/`.
  /// [intentView] Optional. The resource view to apply to the returned intent.
  /// [isFallback] Optional. Indicates whether this is a fallback intent.
  /// [languageCode] Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  /// [liveAgentHandoff] Optional. Indicates that a live agent should be brought in to handle the interaction with the user. In most cases, when you set this flag to true, you would also want to set end_interaction to true as well. Default is false.
  /// [location] Optional.
  /// [messages] Optional. The collection of rich messages corresponding to the `Response` field in the Dialogflow console.
  /// [mlDisabled] Optional. Indicates whether Machine Learning is disabled for the intent. Note: If `ml_disabled` setting is set to true, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off.
  /// [name] Optional. The unique identifier of this intent. Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Format: `projects//agent/intents/`.
  /// [outputContexts] Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the `lifespan_count` to 0 will reset the context when the intent is matched. Format: `projects//agent/sessions/-/contexts/`.
  /// [parameters] Optional. The collection of parameters associated with the intent.
  /// [parentFollowupIntentName] Read-only after creation. The unique identifier of the parent intent in the chain of followup intents. You can set this field when creating an intent, for example with CreateIntent or BatchUpdateIntents, in order to make this intent a followup intent. It identifies the parent followup intent. Format: `projects//agent/intents/`.
  /// [priority] Optional. The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  /// [project] Optional.
  /// [resetContexts] Optional. Indicates whether to delete all contexts in the current session when this intent is matched.
  /// [trainingPhrases] Optional. The collection of examples that the agent is trained on.
  /// [webhookState] Optional. Indicates whether webhooks are enabled for the intent.
  IntentArgs({
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
      'defaultResponsePlatforms': ?pulumi.Input.mapOptionalInputValue<List<IntentDefaultResponsePlatformsItem>, List<String>>(defaultResponsePlatforms, (value) => pulumi.Input.encodeList<IntentDefaultResponsePlatformsItem, String>(value, (value) => value.value)),
      'displayName': displayName,
      'endInteraction': ?endInteraction,
      'events': ?events,
      'inputContextNames': ?inputContextNames,
      'intentView': ?intentView,
      'isFallback': ?isFallback,
      'languageCode': ?languageCode,
      'liveAgentHandoff': ?liveAgentHandoff,
      'location': ?location,
      'messages': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2IntentMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mlDisabled': ?mlDisabled,
      'name': ?name,
      'outputContexts': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2Context>, List<Map<String, dynamic>>>(outputContexts, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2Context, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2IntentParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentFollowupIntentName': ?parentFollowupIntentName,
      'priority': ?priority,
      'project': ?project,
      'resetContexts': ?resetContexts,
      'trainingPhrases': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2IntentTrainingPhrase>, List<Map<String, dynamic>>>(trainingPhrases, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentTrainingPhrase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhookState': ?pulumi.Input.mapOptionalInputValue<IntentWebhookState, String>(webhookState, (value) => value.value),
    };
  }

  factory IntentArgs.fromMap(Map<String, dynamic> map) {
    return IntentArgs(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      defaultResponsePlatforms: map['defaultResponsePlatforms'] == null ? null : (pulumi.Input.decodeList<IntentDefaultResponsePlatformsItem>(map['defaultResponsePlatforms']!, (value) => IntentDefaultResponsePlatformsItem.fromValue(value as String))).input(),
      displayName: (map['displayName'] as String).input(),
      endInteraction: map['endInteraction'] == null ? null : (map['endInteraction']! as bool).input(),
      events: map['events'] == null ? null : ((map['events']! as List).cast<String>()).input(),
      inputContextNames: map['inputContextNames'] == null ? null : ((map['inputContextNames']! as List).cast<String>()).input(),
      intentView: map['intentView'] == null ? null : (map['intentView']! as String).input(),
      isFallback: map['isFallback'] == null ? null : (map['isFallback']! as bool).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode']! as String).input(),
      liveAgentHandoff: map['liveAgentHandoff'] == null ? null : (map['liveAgentHandoff']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      messages: map['messages'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessage>(map['messages']!, (value) => GoogleCloudDialogflowV2IntentMessage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mlDisabled: map['mlDisabled'] == null ? null : (map['mlDisabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      outputContexts: map['outputContexts'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowV2Context>(map['outputContexts']!, (value) => GoogleCloudDialogflowV2Context.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentParameter>(map['parameters']!, (value) => GoogleCloudDialogflowV2IntentParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parentFollowupIntentName: map['parentFollowupIntentName'] == null ? null : (map['parentFollowupIntentName']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      resetContexts: map['resetContexts'] == null ? null : (map['resetContexts']! as bool).input(),
      trainingPhrases: map['trainingPhrases'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentTrainingPhrase>(map['trainingPhrases']!, (value) => GoogleCloudDialogflowV2IntentTrainingPhrase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webhookState: map['webhookState'] == null ? null : (IntentWebhookState.fromValue(map['webhookState']! as String)).input(),
    );
  }
}

