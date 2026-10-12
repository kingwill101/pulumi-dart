import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_platform_agent_route_args.dart';
import 'agent_platform_agent_route_state.dart';

class AgentPlatformAgentRoute extends pulumi.CustomResource {
  /// The UUID of the child agent.
  late final pulumi.Output<String> childAgentUuid;
  /// if-case condition for the route.
  late final pulumi.Output<String?> ifCase;
  /// The UUID of the parent agent.
  late final pulumi.Output<String> parentAgentUuid;
  late final pulumi.Output<bool?> rollback;
  /// A name for the route.
  late final pulumi.Output<String?> routeName;
  /// The UUID of the linkage
  late final pulumi.Output<String> uuid;

  /// Creates a new [AgentPlatformAgentRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPlatformAgentRoute]. {@macro pulumi_index_agent_platform_agent_route_agent_platform_agent_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPlatformAgentRoute(
    String name, {
    AgentPlatformAgentRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformAgentRoute:AgentPlatformAgentRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.83.0').merge(options),
        ) {
    childAgentUuid = registerOutput<String>('childAgentUuid');
    ifCase = registerOutput<String?>('ifCase');
    parentAgentUuid = registerOutput<String>('parentAgentUuid');
    rollback = registerOutput<bool?>('rollback');
    routeName = registerOutput<String?>('routeName');
    uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [AgentPlatformAgentRoute] resource's state with the given [name] and [id].
  static AgentPlatformAgentRoute get(
    String name,
    pulumi.Input<String> id, {
    AgentPlatformAgentRouteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentPlatformAgentRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentPlatformAgentRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformAgentRoute:AgentPlatformAgentRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    childAgentUuid = registerOutput<String>('childAgentUuid');
    ifCase = registerOutput<String?>('ifCase');
    parentAgentUuid = registerOutput<String>('parentAgentUuid');
    rollback = registerOutput<bool?>('rollback');
    routeName = registerOutput<String?>('routeName');
    uuid = registerOutput<String>('uuid');
  }

  /// Creates a typed reference to an existing [AgentPlatformAgentRoute] resource.
  AgentPlatformAgentRoute.reference(String urn)
    : super(
        'digitalocean:index/agentPlatformAgentRoute:AgentPlatformAgentRoute',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    childAgentUuid = registerOutput<String>('childAgentUuid');
    ifCase = registerOutput<String?>('ifCase');
    parentAgentUuid = registerOutput<String>('parentAgentUuid');
    rollback = registerOutput<bool?>('rollback');
    routeName = registerOutput<String?>('routeName');
    uuid = registerOutput<String>('uuid');
  }
}
