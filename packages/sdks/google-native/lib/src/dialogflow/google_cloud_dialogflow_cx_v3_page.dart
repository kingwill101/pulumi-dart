// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3_event_handler.dart';
import 'google_cloud_dialogflow_cx_v3_form.dart';
import 'google_cloud_dialogflow_cx_v3_fulfillment.dart';
import 'google_cloud_dialogflow_cx_v3_knowledge_connector_settings.dart';
import 'google_cloud_dialogflow_cx_v3_transition_route.dart';

/// A Dialogflow CX conversation (session) can be described and visualized as a state machine. The states of a CX session are represented by pages. For each flow, you define many pages, where your combined pages can handle a complete conversation on the topics the flow is designed for. At any given moment, exactly one page is the current page, the current page is considered active, and the flow associated with that page is considered active. Every flow has a special start page. When a flow initially becomes active, the start page page becomes the current page. For each conversational turn, the current page will either stay the same or transition to another page. You configure each page to collect information from the end-user that is relevant for the conversational state represented by the page. For more information, see the [Page guide](https://cloud.google.com/dialogflow/cx/docs/concept/page).
class GoogleCloudDialogflowCxV3Page {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final pulumi.Input<GoogleCloudDialogflowCxV3AdvancedSettings>? advancedSettings;
  /// The human-readable name of the page, unique within the flow.
  final pulumi.Input<String> displayName;
  /// The fulfillment to call when the session is entering the page.
  final pulumi.Input<GoogleCloudDialogflowCxV3Fulfillment>? entryFulfillment;
  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3EventHandler>>? eventHandlers;
  /// The form associated with the page, used for collecting parameters relevant to the page.
  final pulumi.Input<GoogleCloudDialogflowCxV3Form>? form;
  /// Optional. Knowledge connector configuration.
  final pulumi.Input<GoogleCloudDialogflowCxV3KnowledgeConnectorSettings>? knowledgeConnectorSettings;
  /// The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  final pulumi.Input<String>? name;
  /// Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -&gt; page's transition route group -&gt; flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final pulumi.Input<List<String>>? transitionRouteGroups;
  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3TransitionRoute>>? transitionRoutes;

  /// Creates a new [GoogleCloudDialogflowCxV3Page].
  /// [advancedSettings] Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [displayName] The human-readable name of the page, unique within the flow.
  /// [entryFulfillment] The fulfillment to call when the session is entering the page.
  /// [eventHandlers] Handlers associated with the page to handle events such as webhook errors, no match or no input.
  /// [form] The form associated with the page, used for collecting parameters relevant to the page.
  /// [knowledgeConnectorSettings] Optional. Knowledge connector configuration.
  /// [name] The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  /// [transitionRouteGroups] Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -&gt; page's transition route group -&gt; flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  /// [transitionRoutes] A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  const GoogleCloudDialogflowCxV3Page({
    this.advancedSettings,
    required this.displayName,
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
      'advancedSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3AdvancedSettings, Map<String, dynamic>>(advancedSettings, (value) => value.toMap()),
      'displayName': displayName,
      'entryFulfillment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3Fulfillment, Map<String, dynamic>>(entryFulfillment, (value) => value.toMap()),
      'eventHandlers': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3EventHandler>, List<Map<String, dynamic>>>(eventHandlers, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3EventHandler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'form': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3Form, Map<String, dynamic>>(form, (value) => value.toMap()),
      'knowledgeConnectorSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3KnowledgeConnectorSettings, Map<String, dynamic>>(knowledgeConnectorSettings, (value) => value.toMap()),
      'name': ?name,
      'transitionRouteGroups': ?transitionRouteGroups,
      'transitionRoutes': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3TransitionRoute>, List<Map<String, dynamic>>>(transitionRoutes, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3TransitionRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3Page.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3Page(
      advancedSettings: (() { final guardedValue = map['advancedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3AdvancedSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      entryFulfillment: (() { final guardedValue = map['entryFulfillment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3Fulfillment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventHandlers: (() { final guardedValue = map['eventHandlers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3EventHandler>(guardedValue, (value) => GoogleCloudDialogflowCxV3EventHandler.fromMap((value as Map).cast<String, dynamic>()))); })(),
      form: (() { final guardedValue = map['form']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3Form.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      knowledgeConnectorSettings: (() { final guardedValue = map['knowledgeConnectorSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3KnowledgeConnectorSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitionRouteGroups: (() { final guardedValue = map['transitionRouteGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transitionRoutes: (() { final guardedValue = map['transitionRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3TransitionRoute>(guardedValue, (value) => GoogleCloudDialogflowCxV3TransitionRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
