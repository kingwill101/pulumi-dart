// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_advanced_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_event_handler_response.dart';
import 'google_cloud_dialogflow_cx_v3_knowledge_connector_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_nlu_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_transition_route_response.dart';

/// Result data returned by getFlow.
class GetFlowResult {
  /// Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final GoogleCloudDialogflowCxV3AdvancedSettingsResponse? advancedSettings;
  /// The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  final String? description;
  /// The human-readable name of the flow.
  final String? displayName;
  /// A flow's event handlers serve two purposes: * They are responsible for handling events (e.g. no match, webhook errors) in the flow. * They are inherited by every page's event handlers, which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow. Unlike transition_routes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  final List<GoogleCloudDialogflowCxV3EventHandlerResponse>? eventHandlers;
  /// Optional. Knowledge connector configuration.
  final GoogleCloudDialogflowCxV3KnowledgeConnectorSettingsResponse? knowledgeConnectorSettings;
  /// The unique identifier of the flow. Format: `projects//locations//agents//flows/`.
  final String? name;
  /// NLU related settings of the flow.
  final GoogleCloudDialogflowCxV3NluSettingsResponse? nluSettings;
  /// A flow's transition route group serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition route groups. Transition route groups defined in the page have higher priority than those defined in the flow. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final List<String>? transitionRouteGroups;
  /// A flow's transition routes serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition routes and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow. TransitionRoutes are evalauted in the following order: * TransitionRoutes with intent specified. * TransitionRoutes with only condition specified. TransitionRoutes with intent specified are inherited by pages in the flow.
  final List<GoogleCloudDialogflowCxV3TransitionRouteResponse>? transitionRoutes;

  /// Creates a new [GetFlowResult].
  /// [advancedSettings] Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [description] The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the flow.
  /// [eventHandlers] A flow's event handlers serve two purposes: * They are responsible for handling events (e.g. no match, webhook errors) in the flow. * They are inherited by every page's event handlers, which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow. Unlike transition_routes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  /// [knowledgeConnectorSettings] Optional. Knowledge connector configuration.
  /// [name] The unique identifier of the flow. Format: `projects//locations//agents//flows/`.
  /// [nluSettings] NLU related settings of the flow.
  /// [transitionRouteGroups] A flow's transition route group serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition route groups. Transition route groups defined in the page have higher priority than those defined in the flow. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  /// [transitionRoutes] A flow's transition routes serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition routes and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow. TransitionRoutes are evalauted in the following order: * TransitionRoutes with intent specified. * TransitionRoutes with only condition specified. TransitionRoutes with intent specified are inherited by pages in the flow.
  const GetFlowResult({
    this.advancedSettings,
    this.description,
    this.displayName,
    this.eventHandlers,
    this.knowledgeConnectorSettings,
    this.name,
    this.nluSettings,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?advancedSettings?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'eventHandlers': ?(() { final guardedValue = eventHandlers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3EventHandlerResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'knowledgeConnectorSettings': ?knowledgeConnectorSettings?.toMap(),
      'name': ?name,
      'nluSettings': ?nluSettings?.toMap(),
      'transitionRouteGroups': ?transitionRouteGroups,
      'transitionRoutes': ?(() { final guardedValue = transitionRoutes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3TransitionRouteResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetFlowResult.fromMap(Map<String, dynamic> map) {
    return GetFlowResult(
      advancedSettings: (() { final guardedValue = map['advancedSettings']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3AdvancedSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventHandlers: (() { final guardedValue = map['eventHandlers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3EventHandlerResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3EventHandlerResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      knowledgeConnectorSettings: (() { final guardedValue = map['knowledgeConnectorSettings']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3KnowledgeConnectorSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nluSettings: (() { final guardedValue = map['nluSettings']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3NluSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      transitionRouteGroups: (() { final guardedValue = map['transitionRouteGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      transitionRoutes: (() { final guardedValue = map['transitionRoutes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3TransitionRouteResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3TransitionRouteResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
