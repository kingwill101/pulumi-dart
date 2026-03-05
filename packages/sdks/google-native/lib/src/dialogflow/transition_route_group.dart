import 'package:pulumi/pulumi.dart' as pulumi;
import 'transition_route_group_args.dart';

/// Creates an TransitionRouteGroup in the specified flow. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
class TransitionRouteGroup extends pulumi.CustomResource {
  late final pulumi.Output<String> agentId;
  /// The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> flowId;
  /// The language of the following fields in `TransitionRouteGroup`: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  late final pulumi.Output<String?> languageCode;
  late final pulumi.Output<String> location;
  /// The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` .
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Transition routes associated with the TransitionRouteGroup.
  late final pulumi.Output<List<Map<String, dynamic>>> transitionRoutes;

  /// Creates a new [TransitionRouteGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitionRouteGroup]. {@macro pulumi_dialogflow_v3_transition_route_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitionRouteGroup(
    String name, {
    TransitionRouteGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3:TransitionRouteGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentId = registerOutput<String>('agentId');
    displayName = registerOutput<String>('displayName');
    flowId = registerOutput<String>('flowId');
    languageCode = registerOutput<String?>('languageCode');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    transitionRoutes = registerOutput<List<Map<String, dynamic>>>('transitionRoutes');
  }
}
