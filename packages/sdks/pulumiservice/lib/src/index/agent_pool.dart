import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_pool_args.dart';

/// Agent Pool for customer managed deployments.
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `{organization}/{name}/{agentPoolId}`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:AgentPool my-agent-pool my-org/my-pool/e4a1b7c2-9f30-4d58-b6e1-2a7c9d0f4e86
/// ```
///
/// The agent pool ID is the last segment of its page URL in the Pulumi Cloud console, for example `https://app.pulumi.com/my-org/settings/workflow-runner-pools/e4a1b7c2-9f30-4d58-b6e1-2a7c9d0f4e86`.
///
/// The pool's `tokenValue` can't be read back from Pulumi Cloud, so it's empty after import.
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
          pulumi.CustomResourceOptions(replaceOnChanges: ['organizationName']).merge(options),
          additionalSecretOutputs: const ['tokenValue'],
        ) {
    agentPoolId = registerOutput<String>('agentPoolId');
    description = registerOutput<String?>('description');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    organizationName = registerOutput<String>('organizationName');
    tokenValue = registerOutput<String>('tokenValue', isSecret: true);
  }

  /// Creates a typed reference to an existing [AgentPool] resource.
  AgentPool.reference(String urn)
    : super(
        'pulumiservice:index:AgentPool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['tokenValue'],
        isResourceReference: true,
      ) {
    agentPoolId = registerOutput<String>('agentPoolId');
    description = registerOutput<String?>('description');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    organizationName = registerOutput<String>('organizationName');
    tokenValue = registerOutput<String>('tokenValue', isSecret: true);
  }
}
