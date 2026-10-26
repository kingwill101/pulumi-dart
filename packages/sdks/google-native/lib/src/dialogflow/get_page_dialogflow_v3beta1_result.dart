// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_event_handler_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_form_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_knowledge_connector_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_transition_route_response.dart';

/// Result data returned by getPage.
class GetPageDialogflowV3beta1Result {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse? advancedSettings;
  /// The human-readable name of the page, unique within the flow.
  final String? displayName;
  /// The fulfillment to call when the session is entering the page.
  final GoogleCloudDialogflowCxV3beta1FulfillmentResponse? entryFulfillment;
  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  final List<GoogleCloudDialogflowCxV3beta1EventHandlerResponse>? eventHandlers;
  /// The form associated with the page, used for collecting parameters relevant to the page.
  final GoogleCloudDialogflowCxV3beta1FormResponse? form;
  /// Optional. Knowledge connector configuration.
  final GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse? knowledgeConnectorSettings;
  /// The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  final String? name;
  /// Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -&gt; page's transition route group -&gt; flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final List<String>? transitionRouteGroups;
  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  final List<GoogleCloudDialogflowCxV3beta1TransitionRouteResponse>? transitionRoutes;

  /// Creates a new [GetPageDialogflowV3beta1Result].
  /// [advancedSettings] Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [displayName] The human-readable name of the page, unique within the flow.
  /// [entryFulfillment] The fulfillment to call when the session is entering the page.
  /// [eventHandlers] Handlers associated with the page to handle events such as webhook errors, no match or no input.
  /// [form] The form associated with the page, used for collecting parameters relevant to the page.
  /// [knowledgeConnectorSettings] Optional. Knowledge connector configuration.
  /// [name] The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  /// [transitionRouteGroups] Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -&gt; page's transition route group -&gt; flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  /// [transitionRoutes] A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  const GetPageDialogflowV3beta1Result({
    this.advancedSettings,
    this.displayName,
    this.entryFulfillment,
    this.eventHandlers,
    this.form,
    this.knowledgeConnectorSettings,
    this.name,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?advancedSettings?.toMap(),
      'displayName': ?displayName,
      'entryFulfillment': ?entryFulfillment?.toMap(),
      'eventHandlers': ?(() { final guardedValue = eventHandlers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1EventHandlerResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'form': ?form?.toMap(),
      'knowledgeConnectorSettings': ?knowledgeConnectorSettings?.toMap(),
      'name': ?name,
      'transitionRouteGroups': ?transitionRouteGroups,
      'transitionRoutes': ?(() { final guardedValue = transitionRoutes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1TransitionRouteResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPageDialogflowV3beta1Result.fromMap(Map<String, dynamic> map) {
    return GetPageDialogflowV3beta1Result(
      advancedSettings: (() { final guardedValue = map['advancedSettings']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entryFulfillment: (() { final guardedValue = map['entryFulfillment']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3beta1FulfillmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      eventHandlers: (() { final guardedValue = map['eventHandlers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1EventHandlerResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3beta1EventHandlerResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      form: (() { final guardedValue = map['form']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3beta1FormResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      knowledgeConnectorSettings: (() { final guardedValue = map['knowledgeConnectorSettings']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitionRouteGroups: (() { final guardedValue = map['transitionRouteGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      transitionRoutes: (() { final guardedValue = map['transitionRoutes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1TransitionRouteResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3beta1TransitionRouteResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
