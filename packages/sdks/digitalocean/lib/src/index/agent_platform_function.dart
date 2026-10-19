import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_platform_function_args.dart';
import 'agent_platform_function_state.dart';

class AgentPlatformFunction extends pulumi.CustomResource {
  /// The name of the Agent Platform resource.
  late final pulumi.Output<String> agentId;
  /// The region where the Agent Platform resource will be created.
  late final pulumi.Output<String> description;
  /// The model to use for the Agent Platform resource.
  late final pulumi.Output<String?> faasName;
  /// The current status of the Agent Platform resource.
  late final pulumi.Output<String> faasNamespace;
  /// The creation timestamp of the Agent Platform resource.
  late final pulumi.Output<String> functionName;
  /// The unique identifier of the Agent Platform function.
  late final pulumi.Output<String> functionUuid;
  /// The input schema of the Agent Platform resource.
  late final pulumi.Output<String> inputSchema;
  /// The output schema of the Agent Platform resource.
  late final pulumi.Output<String?> outputSchema;

  /// Creates a new [AgentPlatformFunction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPlatformFunction]. {@macro pulumi_index_agent_platform_function_agent_platform_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPlatformFunction(
    String name, {
    AgentPlatformFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformFunction:AgentPlatformFunction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.84.1').merge(options),
        ) {
    agentId = registerOutput<String>('agentId');
    description = registerOutput<String>('description');
    faasName = registerOutput<String?>('faasName');
    faasNamespace = registerOutput<String>('faasNamespace');
    functionName = registerOutput<String>('functionName');
    functionUuid = registerOutput<String>('functionUuid');
    inputSchema = registerOutput<String>('inputSchema');
    outputSchema = registerOutput<String?>('outputSchema');
  }

  /// Gets an existing [AgentPlatformFunction] resource's state with the given [name] and [id].
  static AgentPlatformFunction get(
    String name,
    pulumi.Input<String> id, {
    AgentPlatformFunctionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentPlatformFunction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentPlatformFunction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformFunction:AgentPlatformFunction',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentId = registerOutput<String>('agentId');
    description = registerOutput<String>('description');
    faasName = registerOutput<String?>('faasName');
    faasNamespace = registerOutput<String>('faasNamespace');
    functionName = registerOutput<String>('functionName');
    functionUuid = registerOutput<String>('functionUuid');
    inputSchema = registerOutput<String>('inputSchema');
    outputSchema = registerOutput<String?>('outputSchema');
  }

  /// Creates a typed reference to an existing [AgentPlatformFunction] resource.
  AgentPlatformFunction.reference(String urn)
    : super(
        'digitalocean:index/agentPlatformFunction:AgentPlatformFunction',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentId = registerOutput<String>('agentId');
    description = registerOutput<String>('description');
    faasName = registerOutput<String?>('faasName');
    faasNamespace = registerOutput<String>('faasNamespace');
    functionName = registerOutput<String>('functionName');
    functionUuid = registerOutput<String>('functionUuid');
    inputSchema = registerOutput<String>('inputSchema');
    outputSchema = registerOutput<String?>('outputSchema');
  }
}
