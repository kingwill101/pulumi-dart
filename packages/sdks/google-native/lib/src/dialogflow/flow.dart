import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_args.dart';
import 'google_cloud_dialogflow_cx_v3_advanced_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_knowledge_connector_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_nlu_settings_response.dart';

/// Creates a flow in the specified agent. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
class Flow extends pulumi.CustomResource {
  /// Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  late final pulumi.Output<GoogleCloudDialogflowCxV3AdvancedSettingsResponse>
  advancedSettings;
  late final pulumi.Output<String> agentId;

  /// The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final pulumi.Output<String> description;

  /// The human-readable name of the flow.
  late final pulumi.Output<String> displayName;

  /// A flow's event handlers serve two purposes: * They are responsible for handling events (e.g. no match, webhook errors) in the flow. * They are inherited by every page's event handlers, which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow. Unlike transition_routes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  late final pulumi.Output<List<Map<String, dynamic>>> eventHandlers;

  /// Optional. Knowledge connector configuration.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3KnowledgeConnectorSettingsResponse
  >
  knowledgeConnectorSettings;

  /// The language of the following fields in `flow`: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  late final pulumi.Output<String?> languageCode;
  late final pulumi.Output<String> location;

  /// The unique identifier of the flow. Format: `projects//locations//agents//flows/`.
  late final pulumi.Output<String> name;

  /// NLU related settings of the flow.
  late final pulumi.Output<GoogleCloudDialogflowCxV3NluSettingsResponse>
  nluSettings;
  late final pulumi.Output<String> project;

  /// A flow's transition route group serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition route groups. Transition route groups defined in the page have higher priority than those defined in the flow. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  late final pulumi.Output<List<String>> transitionRouteGroups;

  /// A flow's transition routes serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition routes and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow. TransitionRoutes are evalauted in the following order: * TransitionRoutes with intent specified. * TransitionRoutes with only condition specified. TransitionRoutes with intent specified are inherited by pages in the flow.
  late final pulumi.Output<List<Map<String, dynamic>>> transitionRoutes;

  /// Creates a new [Flow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Flow]. {@macro pulumi_dialogflow_v3_flow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Flow(String name, {FlowArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:dialogflow/v3:Flow',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    advancedSettings =
        registerOutput<GoogleCloudDialogflowCxV3AdvancedSettingsResponse>(
          'advancedSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3AdvancedSettingsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    agentId = registerOutput<String>('agentId');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    eventHandlers = registerOutput<List<Map<String, dynamic>>>('eventHandlers');
    knowledgeConnectorSettings =
        registerOutput<
          GoogleCloudDialogflowCxV3KnowledgeConnectorSettingsResponse
        >(
          'knowledgeConnectorSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3KnowledgeConnectorSettingsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    languageCode = registerOutput<String?>('languageCode');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nluSettings = registerOutput<GoogleCloudDialogflowCxV3NluSettingsResponse>(
      'nluSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudDialogflowCxV3NluSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    transitionRouteGroups = registerOutput<List<String>>(
      'transitionRouteGroups',
    );
    transitionRoutes = registerOutput<List<Map<String, dynamic>>>(
      'transitionRoutes',
    );
  }
}
