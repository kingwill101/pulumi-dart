import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_agent_route_args.dart';
import 'genai_agent_route_state.dart';

class GenaiAgentRoute extends pulumi.CustomResource {
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

  /// Creates a new [GenaiAgentRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GenaiAgentRoute]. {@macro pulumi_index_genai_agent_route_genai_agent_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GenaiAgentRoute(
    String name, {
    GenaiAgentRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiAgentRoute:GenaiAgentRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.childAgentUuid = registerOutput<String>('childAgentUuid');
    this.ifCase = registerOutput<String?>('ifCase');
    this.parentAgentUuid = registerOutput<String>('parentAgentUuid');
    this.rollback = registerOutput<bool?>('rollback');
    this.routeName = registerOutput<String?>('routeName');
    this.uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [GenaiAgentRoute] resource's state with the given [name] and [id].
  static GenaiAgentRoute get(
    String name,
    pulumi.Input<String> id, {
    GenaiAgentRouteState? state,
  }) {
    return GenaiAgentRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GenaiAgentRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiAgentRoute:GenaiAgentRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.childAgentUuid = registerOutput<String>('childAgentUuid');
    this.ifCase = registerOutput<String?>('ifCase');
    this.parentAgentUuid = registerOutput<String>('parentAgentUuid');
    this.rollback = registerOutput<bool?>('rollback');
    this.routeName = registerOutput<String?>('routeName');
    this.uuid = registerOutput<String>('uuid');
  }
}
