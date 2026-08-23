// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3_event_handler.dart';
import 'google_cloud_dialogflow_cx_v3_knowledge_connector_settings.dart';
import 'google_cloud_dialogflow_cx_v3_nlu_settings.dart';
import 'google_cloud_dialogflow_cx_v3_transition_route.dart';

/// {@template pulumi_dialogflow_v3_flow_args_doc}
/// The set of arguments for Flow.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_flow_args_doc}
class FlowArgs {
  /// Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final pulumi.Input<GoogleCloudDialogflowCxV3AdvancedSettings>? advancedSettings;
  final pulumi.Input<String> agentId;
  /// The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;
  /// The human-readable name of the flow.
  final pulumi.Input<String> displayName;
  /// A flow's event handlers serve two purposes: * They are responsible for handling events (e.g. no match, webhook errors) in the flow. * They are inherited by every page's event handlers, which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow. Unlike transition_routes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3EventHandler>>? eventHandlers;
  /// Optional. Knowledge connector configuration.
  final pulumi.Input<GoogleCloudDialogflowCxV3KnowledgeConnectorSettings>? knowledgeConnectorSettings;
  /// The language of the following fields in `flow`: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;
  /// The unique identifier of the flow. Format: `projects//locations//agents//flows/`.
  final pulumi.Input<String>? name;
  /// NLU related settings of the flow.
  final pulumi.Input<GoogleCloudDialogflowCxV3NluSettings>? nluSettings;
  final pulumi.Input<String>? project;
  /// A flow's transition route group serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition route groups. Transition route groups defined in the page have higher priority than those defined in the flow. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final pulumi.Input<List<String>>? transitionRouteGroups;
  /// A flow's transition routes serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition routes and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow. TransitionRoutes are evalauted in the following order: * TransitionRoutes with intent specified. * TransitionRoutes with only condition specified. TransitionRoutes with intent specified are inherited by pages in the flow.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3TransitionRoute>>? transitionRoutes;

  /// Creates a new [FlowArgs].
  /// [advancedSettings] Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [agentId] Required.
  /// [description] The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the flow.
  /// [eventHandlers] A flow's event handlers serve two purposes: * They are responsible for handling events (e.g. no match, webhook errors) in the flow. * They are inherited by every page's event handlers, which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow. Unlike transition_routes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  /// [knowledgeConnectorSettings] Optional. Knowledge connector configuration.
  /// [languageCode] The language of the following fields in `flow`: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  /// [location] Optional.
  /// [name] The unique identifier of the flow. Format: `projects//locations//agents//flows/`.
  /// [nluSettings] NLU related settings of the flow.
  /// [project] Optional.
  /// [transitionRouteGroups] A flow's transition route group serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition route groups. Transition route groups defined in the page have higher priority than those defined in the flow. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  /// [transitionRoutes] A flow's transition routes serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition routes and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow. TransitionRoutes are evalauted in the following order: * TransitionRoutes with intent specified. * TransitionRoutes with only condition specified. TransitionRoutes with intent specified are inherited by pages in the flow.
  const FlowArgs({
    this.advancedSettings,
    required this.agentId,
    this.description,
    required this.displayName,
    this.eventHandlers,
    this.knowledgeConnectorSettings,
    this.languageCode,
    this.location,
    this.name,
    this.nluSettings,
    this.project,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3AdvancedSettings, Map<String, dynamic>>(advancedSettings, (value) => value.toMap()),
      'agentId': agentId,
      'description': ?description,
      'displayName': displayName,
      'eventHandlers': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3EventHandler>, List<Map<String, dynamic>>>(eventHandlers, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3EventHandler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'knowledgeConnectorSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3KnowledgeConnectorSettings, Map<String, dynamic>>(knowledgeConnectorSettings, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'location': ?location,
      'name': ?name,
      'nluSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3NluSettings, Map<String, dynamic>>(nluSettings, (value) => value.toMap()),
      'project': ?project,
      'transitionRouteGroups': ?transitionRouteGroups,
      'transitionRoutes': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3TransitionRoute>, List<Map<String, dynamic>>>(transitionRoutes, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3TransitionRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FlowArgs.fromMap(Map<String, dynamic> map) {
    return FlowArgs(
      advancedSettings: (() { final guardedValue = map['advancedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3AdvancedSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      eventHandlers: (() { final guardedValue = map['eventHandlers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3EventHandler>(guardedValue, (value) => GoogleCloudDialogflowCxV3EventHandler.fromMap((value as Map).cast<String, dynamic>()))); })(),
      knowledgeConnectorSettings: (() { final guardedValue = map['knowledgeConnectorSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3KnowledgeConnectorSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nluSettings: (() { final guardedValue = map['nluSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3NluSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitionRouteGroups: (() { final guardedValue = map['transitionRouteGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transitionRoutes: (() { final guardedValue = map['transitionRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3TransitionRoute>(guardedValue, (value) => GoogleCloudDialogflowCxV3TransitionRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
