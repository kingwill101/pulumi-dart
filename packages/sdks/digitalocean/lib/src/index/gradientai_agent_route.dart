import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_agent_route_args.dart';
import 'gradientai_agent_route_state.dart';

class GradientaiAgentRoute extends pulumi.CustomResource {
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

  /// Creates a new [GradientaiAgentRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GradientaiAgentRoute]. {@macro pulumi_index_gradientai_agent_route_gradientai_agent_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GradientaiAgentRoute(
    String name, {
    GradientaiAgentRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/gradientaiAgentRoute:GradientaiAgentRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    childAgentUuid = registerOutput<String>('childAgentUuid');
    ifCase = registerOutput<String?>('ifCase');
    parentAgentUuid = registerOutput<String>('parentAgentUuid');
    rollback = registerOutput<bool?>('rollback');
    routeName = registerOutput<String?>('routeName');
    uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [GradientaiAgentRoute] resource's state with the given [name] and [id].
  static GradientaiAgentRoute get(
    String name,
    pulumi.Input<String> id, {
    GradientaiAgentRouteState? state,
  }) {
    return GradientaiAgentRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GradientaiAgentRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/gradientaiAgentRoute:GradientaiAgentRoute',
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
}
