import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_args.dart';

/// Creates a new agent pool for an organization. Agent pools enable self-hosted deployment agents, allowing organizations to run Pulumi Deployments on their own infrastructure rather than Pulumi-managed infrastructure. This is useful for accessing private networks, meeting compliance requirements, or using custom execution environments. The response includes an access token (agent pool secret) that self-hosted agents use to authenticate when polling for deployment work. This token is only returned once at creation time and cannot be retrieved later.
class Pool extends pulumi.CustomResource {
  /// The agents
  late final pulumi.Output<List<Map<String, dynamic>>> agents;
  /// The creation timestamp
  late final pulumi.Output<int> created;
  /// The description
  late final pulumi.Output<String> description;
  /// The name
  late final pulumi.Output<String> name;
  /// The unique identifier
  late final pulumi.Output<String> poolId;
  /// The token value
  late final pulumi.Output<String?> tokenValue;

  /// Creates a new [Pool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pool]. {@macro pulumi_api_agents_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pool(
    String name, {
    PoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/agents:Pool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agents = registerOutput<List<Map<String, dynamic>>>('agents');
    created = registerOutput<int>('created');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    poolId = registerOutput<String>('poolId');
    tokenValue = registerOutput<String?>('tokenValue');
  }
}
