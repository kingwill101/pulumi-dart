import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_function_args.dart';
import 'genai_function_state.dart';

class GenaiFunction extends pulumi.CustomResource {
  /// The name of the GradientAI resource.
  late final pulumi.Output<String> agentId;

  /// The region where the GradientAI resource will be created.
  late final pulumi.Output<String> description;

  /// The model to use for the GradientAI resource.
  late final pulumi.Output<String?> faasName;

  /// The current status of the GradientAI resource.
  late final pulumi.Output<String> faasNamespace;

  /// The creation timestamp of the GradientAI resource.
  late final pulumi.Output<String> functionName;

  /// The unique identifier of the GradientAI function.
  late final pulumi.Output<String> functionUuid;

  /// The input schema of the GradientAI resource.
  late final pulumi.Output<String> inputSchema;

  /// The output schema of the GradientAI resource.
  late final pulumi.Output<String?> outputSchema;

  /// Creates a new [GenaiFunction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GenaiFunction]. {@macro pulumi_index_genai_function_genai_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GenaiFunction(
    String name, {
    GenaiFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/genaiFunction:GenaiFunction',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
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

  /// Gets an existing [GenaiFunction] resource's state with the given [name] and [id].
  static GenaiFunction get(
    String name,
    pulumi.Input<String> id, {
    GenaiFunctionState? state,
  }) {
    return GenaiFunction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GenaiFunction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/genaiFunction:GenaiFunction',
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
}
