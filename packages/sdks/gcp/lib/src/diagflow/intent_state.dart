// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_followup_intent_info.dart';

/// Input properties used for looking up and filtering Intent resources.
class IntentState {
  /// The name of the action associated with the intent.
  /// Note: The action name must not contain whitespaces.
  final pulumi.Input<String>? action;
  /// The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED
  /// (i.e. default platform).
  /// Each value may be one of: `FACEBOOK`, `SLACK`, `TELEGRAM`, `KIK`, `SKYPE`, `LINE`, `VIBER`, `ACTIONS_ON_GOOGLE`, `GOOGLE_HANGOUTS`.
  final pulumi.Input<List<String>>? defaultResponsePlatforms;
  /// The name of this intent to be displayed on the console.
  final pulumi.Input<String>? displayName;
  /// The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of
  /// the contexts must be present in the active user session for an event to trigger this intent. See the
  /// [events reference](https://cloud.google.com/dialogflow/docs/events-overview) for more details.
  final pulumi.Input<List<String>>? events;
  /// Information about all followup intents that have this intent as a direct or indirect parent. We populate this field
  /// only in the output.
  /// Structure is documented below.
  final pulumi.Input<List<IntentFollowupIntentInfo>>? followupIntentInfos;
  /// The list of context names required for this intent to be triggered.
  /// Format: projects/&lt;Project ID&gt;/agent/sessions/-/contexts/&lt;Context ID&gt;.
  final pulumi.Input<List<String>>? inputContextNames;
  /// Indicates whether this is a fallback intent.
  final pulumi.Input<bool>? isFallback;
  /// Indicates whether Machine Learning is disabled for the intent.
  /// Note: If mlDisabled setting is set to true, then this intent is not taken into account during inference in ML
  /// ONLY match mode. Also, auto-markup in the UI is turned off.
  final pulumi.Input<bool>? mlDisabled;
  /// The unique identifier of this intent.
  /// Format: projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;.
  final pulumi.Input<String>? name;
  /// The unique identifier of the parent intent in the chain of followup intents.
  /// Format: projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;.
  final pulumi.Input<String>? parentFollowupIntentName;
  /// The priority of this intent. Higher numbers represent higher priorities.
  /// - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds
  /// to the Normal priority in the console.
  /// - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Indicates whether to delete all contexts in the current session when this intent is matched.
  final pulumi.Input<bool>? resetContexts;
  /// The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup
  /// intents chain for this intent.
  /// Format: projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;.
  final pulumi.Input<String>? rootFollowupIntentName;
  /// Indicates whether webhooks are enabled for the intent.
  /// * WEBHOOK_STATE_ENABLED: Webhook is enabled in the agent and in the intent.
  /// * WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING: Webhook is enabled in the agent and in the intent. Also, each slot
  /// filling prompt is forwarded to the webhook.
  /// Possible values are: `WEBHOOK_STATE_ENABLED`, `WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING`.
  final pulumi.Input<String>? webhookState;

  /// Creates a new [IntentState].
  /// [action] The name of the action associated with the intent.
  /// [defaultResponsePlatforms] The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED
  /// [displayName] The name of this intent to be displayed on the console.
  /// [events] The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of
  /// [followupIntentInfos] Information about all followup intents that have this intent as a direct or indirect parent. We populate this field
  /// [inputContextNames] The list of context names required for this intent to be triggered.
  /// [isFallback] Indicates whether this is a fallback intent.
  /// [mlDisabled] Indicates whether Machine Learning is disabled for the intent.
  /// [name] The unique identifier of this intent.
  /// [parentFollowupIntentName] The unique identifier of the parent intent in the chain of followup intents.
  /// [priority] The priority of this intent. Higher numbers represent higher priorities.
  /// [project] The ID of the project in which the resource belongs.
  /// [resetContexts] Indicates whether to delete all contexts in the current session when this intent is matched.
  /// [rootFollowupIntentName] The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup
  /// [webhookState] Indicates whether webhooks are enabled for the intent.
  IntentState({
    this.action,
    this.defaultResponsePlatforms,
    this.displayName,
    this.events,
    this.followupIntentInfos,
    this.inputContextNames,
    this.isFallback,
    this.mlDisabled,
    this.name,
    this.parentFollowupIntentName,
    this.priority,
    this.project,
    this.resetContexts,
    this.rootFollowupIntentName,
    this.webhookState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'defaultResponsePlatforms': ?defaultResponsePlatforms,
      'displayName': ?displayName,
      'events': ?events,
      'followupIntentInfos': ?pulumi.Input.mapOptionalInputValue<List<IntentFollowupIntentInfo>, List<Map<String, dynamic>>>(followupIntentInfos, (value) => pulumi.Input.encodeList<IntentFollowupIntentInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputContextNames': ?inputContextNames,
      'isFallback': ?isFallback,
      'mlDisabled': ?mlDisabled,
      'name': ?name,
      'parentFollowupIntentName': ?parentFollowupIntentName,
      'priority': ?priority,
      'project': ?project,
      'resetContexts': ?resetContexts,
      'rootFollowupIntentName': ?rootFollowupIntentName,
      'webhookState': ?webhookState,
    };
  }

  factory IntentState.fromMap(Map<String, dynamic> map) {
    return IntentState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultResponsePlatforms: (() { final guardedValue = map['defaultResponsePlatforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      followupIntentInfos: (() { final guardedValue = map['followupIntentInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IntentFollowupIntentInfo>(guardedValue, (value) => IntentFollowupIntentInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputContextNames: (() { final guardedValue = map['inputContextNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isFallback: (() { final guardedValue = map['isFallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mlDisabled: (() { final guardedValue = map['mlDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentFollowupIntentName: (() { final guardedValue = map['parentFollowupIntentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resetContexts: (() { final guardedValue = map['resetContexts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rootFollowupIntentName: (() { final guardedValue = map['rootFollowupIntentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookState: (() { final guardedValue = map['webhookState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

