import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_transition_route_response.dart';
import 'transition_route_group_dialogflow_v3beta1_args.dart';

/// Creates an TransitionRouteGroup in the specified flow. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
class TransitionRouteGroupDialogflowV3beta1 extends pulumi.CustomResource {
  late final pulumi.Output<String> agentId;
  /// The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> flowId;
  /// The language of the following fields in `TransitionRouteGroup`: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  late final pulumi.Output<String?> languageCode;
  late final pulumi.Output<String> location;
  /// The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Transition routes associated with the TransitionRouteGroup.
  late final pulumi.Output<List<GoogleCloudDialogflowCxV3beta1TransitionRouteResponse>> transitionRoutes;

  /// Creates a new [TransitionRouteGroupDialogflowV3beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitionRouteGroupDialogflowV3beta1]. {@macro pulumi_dialogflow_v3beta1_transition_route_group_dialogflow_v3beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitionRouteGroupDialogflowV3beta1(
    String name, {
    TransitionRouteGroupDialogflowV3beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3beta1:TransitionRouteGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentId = registerOutput<String>('agentId');
    this.displayName = registerOutput<String>('displayName');
    this.flowId = registerOutput<String>('flowId');
    this.languageCode = registerOutput<String?>('languageCode');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.transitionRoutes = registerOutput<List<GoogleCloudDialogflowCxV3beta1TransitionRouteResponse>>('transitionRoutes');
  }
}
