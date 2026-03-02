// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3_event_handler.dart';
import 'google_cloud_dialogflow_cx_v3_form.dart';
import 'google_cloud_dialogflow_cx_v3_fulfillment.dart';
import 'google_cloud_dialogflow_cx_v3_knowledge_connector_settings.dart';
import 'google_cloud_dialogflow_cx_v3_transition_route.dart';

/// {@template pulumi_dialogflow_v3_page_args_doc}
/// The set of arguments for Page.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_page_args_doc}
class PageArgs {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final pulumi.Input<GoogleCloudDialogflowCxV3AdvancedSettings>? advancedSettings;
  final pulumi.Input<String> agentId;
  /// The human-readable name of the page, unique within the flow.
  final pulumi.Input<String> displayName;
  /// The fulfillment to call when the session is entering the page.
  final pulumi.Input<GoogleCloudDialogflowCxV3Fulfillment>? entryFulfillment;
  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3EventHandler>>? eventHandlers;
  final pulumi.Input<String> flowId;
  /// The form associated with the page, used for collecting parameters relevant to the page.
  final pulumi.Input<GoogleCloudDialogflowCxV3Form>? form;
  /// Optional. Knowledge connector configuration.
  final pulumi.Input<GoogleCloudDialogflowCxV3KnowledgeConnectorSettings>? knowledgeConnectorSettings;
  /// The language of the following fields in `page`: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;
  /// The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final pulumi.Input<List<String>>? transitionRouteGroups;
  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3TransitionRoute>>? transitionRoutes;

  /// Creates a new [PageArgs].
  /// [advancedSettings] Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [agentId] Required.
  /// [displayName] The human-readable name of the page, unique within the flow.
  /// [entryFulfillment] The fulfillment to call when the session is entering the page.
  /// [eventHandlers] Handlers associated with the page to handle events such as webhook errors, no match or no input.
  /// [flowId] Required.
  /// [form] The form associated with the page, used for collecting parameters relevant to the page.
  /// [knowledgeConnectorSettings] Optional. Knowledge connector configuration.
  /// [languageCode] The language of the following fields in `page`: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  /// [location] Optional.
  /// [name] The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  /// [project] Optional.
  /// [transitionRouteGroups] Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  /// [transitionRoutes] A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  PageArgs({
    this.advancedSettings,
    required this.agentId,
    required this.displayName,
    this.entryFulfillment,
    this.eventHandlers,
    required this.flowId,
    this.form,
    this.knowledgeConnectorSettings,
    this.languageCode,
    this.location,
    this.name,
    this.project,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3AdvancedSettings, Map<String, dynamic>>(advancedSettings, (value) => value.toMap()),
      'agentId': agentId,
      'displayName': displayName,
      'entryFulfillment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3Fulfillment, Map<String, dynamic>>(entryFulfillment, (value) => value.toMap()),
      'eventHandlers': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3EventHandler>, List<Map<String, dynamic>>>(eventHandlers, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3EventHandler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'flowId': flowId,
      'form': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3Form, Map<String, dynamic>>(form, (value) => value.toMap()),
      'knowledgeConnectorSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3KnowledgeConnectorSettings, Map<String, dynamic>>(knowledgeConnectorSettings, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'transitionRouteGroups': ?transitionRouteGroups,
      'transitionRoutes': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3TransitionRoute>, List<Map<String, dynamic>>>(transitionRoutes, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3TransitionRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PageArgs.fromMap(Map<String, dynamic> map) {
    return PageArgs(
      advancedSettings: map['advancedSettings'] == null ? null : (GoogleCloudDialogflowCxV3AdvancedSettings.fromMap((map['advancedSettings'] as Map).cast<String, dynamic>())).input(),
      agentId: (map['agentId'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      entryFulfillment: map['entryFulfillment'] == null ? null : (GoogleCloudDialogflowCxV3Fulfillment.fromMap((map['entryFulfillment'] as Map).cast<String, dynamic>())).input(),
      eventHandlers: map['eventHandlers'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3EventHandler>(map['eventHandlers'], (value) => GoogleCloudDialogflowCxV3EventHandler.fromMap((value as Map).cast<String, dynamic>()))).input(),
      flowId: (map['flowId'] as String).input(),
      form: map['form'] == null ? null : (GoogleCloudDialogflowCxV3Form.fromMap((map['form'] as Map).cast<String, dynamic>())).input(),
      knowledgeConnectorSettings: map['knowledgeConnectorSettings'] == null ? null : (GoogleCloudDialogflowCxV3KnowledgeConnectorSettings.fromMap((map['knowledgeConnectorSettings'] as Map).cast<String, dynamic>())).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      transitionRouteGroups: map['transitionRouteGroups'] == null ? null : ((map['transitionRouteGroups'] as List).cast<String>()).input(),
      transitionRoutes: map['transitionRoutes'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3TransitionRoute>(map['transitionRoutes'], (value) => GoogleCloudDialogflowCxV3TransitionRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

