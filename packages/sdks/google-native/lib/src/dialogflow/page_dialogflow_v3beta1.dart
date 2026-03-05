import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_form_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_knowledge_connector_settings_response.dart';
import 'page_dialogflow_v3beta1_args.dart';

/// Creates a page in the specified flow.
class PageDialogflowV3beta1 extends pulumi.CustomResource {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  late final pulumi.Output<GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse> advancedSettings;
  late final pulumi.Output<String> agentId;
  /// The human-readable name of the page, unique within the flow.
  late final pulumi.Output<String> displayName;
  /// The fulfillment to call when the session is entering the page.
  late final pulumi.Output<GoogleCloudDialogflowCxV3beta1FulfillmentResponse> entryFulfillment;
  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  late final pulumi.Output<List<Map<String, dynamic>>> eventHandlers;
  late final pulumi.Output<String> flowId;
  /// The form associated with the page, used for collecting parameters relevant to the page.
  late final pulumi.Output<GoogleCloudDialogflowCxV3beta1FormResponse> form;
  /// Optional. Knowledge connector configuration.
  late final pulumi.Output<GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse> knowledgeConnectorSettings;
  /// The language of the following fields in `page`: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  late final pulumi.Output<String?> languageCode;
  late final pulumi.Output<String> location;
  /// The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -&gt; page's transition route group -&gt; flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  late final pulumi.Output<List<String>> transitionRouteGroups;
  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  late final pulumi.Output<List<Map<String, dynamic>>> transitionRoutes;

  /// Creates a new [PageDialogflowV3beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PageDialogflowV3beta1]. {@macro pulumi_dialogflow_v3beta1_page_dialogflow_v3beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PageDialogflowV3beta1(
    String name, {
    PageDialogflowV3beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3beta1:Page',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advancedSettings = registerOutput<GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse>('advancedSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    agentId = registerOutput<String>('agentId');
    displayName = registerOutput<String>('displayName');
    entryFulfillment = registerOutput<GoogleCloudDialogflowCxV3beta1FulfillmentResponse>('entryFulfillment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3beta1FulfillmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventHandlers = registerOutput<List<Map<String, dynamic>>>('eventHandlers');
    flowId = registerOutput<String>('flowId');
    form = registerOutput<GoogleCloudDialogflowCxV3beta1FormResponse>('form', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3beta1FormResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    knowledgeConnectorSettings = registerOutput<GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse>('knowledgeConnectorSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageCode = registerOutput<String?>('languageCode');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    transitionRouteGroups = registerOutput<List<String>>('transitionRouteGroups');
    transitionRoutes = registerOutput<List<Map<String, dynamic>>>('transitionRoutes');
  }
}
