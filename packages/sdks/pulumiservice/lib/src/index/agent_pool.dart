import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_pool_args.dart';

/// Agent Pool for customer managed deployments.
class AgentPool extends pulumi.CustomResource {
  /// The agent pool identifier.
  late final pulumi.Output<String> agentPoolId;
  /// Description of the agent pool.
  late final pulumi.Output<String?> description;
  /// Optional. Flag indicating whether to delete the agent pool even if stacks are configured to use it.
  late final pulumi.Output<bool?> forceDestroy;
  /// Name of the agent pool.
  late final pulumi.Output<String> name;
  /// The organization's name.
  late final pulumi.Output<String> organizationName;
  /// The agent pool's token's value.
  late final pulumi.Output<String> tokenValue;

  /// Creates a new [AgentPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPool]. {@macro pulumi_index_agent_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPool(
    String name, {
    AgentPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:AgentPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentPoolId = registerOutput<String>('agentPoolId');
    description = registerOutput<String?>('description');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    organizationName = registerOutput<String>('organizationName');
    tokenValue = registerOutput<String>('tokenValue');
  }
}
