import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_openai_api_key_args.dart';
import 'gradientai_openai_api_key_state.dart';

class GradientaiOpenaiApiKey extends pulumi.CustomResource {
  /// The OpenAI API key.
  late final pulumi.Output<String> apiKey;

  /// When the API key was created.
  late final pulumi.Output<String> createdAt;

  /// Who created the API key.
  late final pulumi.Output<String> createdBy;

  /// When the API key was deleted.
  late final pulumi.Output<String> deletedAt;

  /// Models associated with the OpenAI API key
  late final pulumi.Output<List<Map<String, dynamic>>> models;

  /// A name for the API key.
  late final pulumi.Output<String> name;

  /// When the API key was last updated.
  late final pulumi.Output<String> updatedAt;

  /// The UUID of the API key.
  late final pulumi.Output<String> uuid;

  /// Creates a new [GradientaiOpenaiApiKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GradientaiOpenaiApiKey]. {@macro pulumi_index_gradientai_openai_api_key_gradientai_openai_api_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GradientaiOpenaiApiKey(
    String name, {
    GradientaiOpenaiApiKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/gradientaiOpenaiApiKey:GradientaiOpenaiApiKey',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiKey = registerOutput<String>('apiKey');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    deletedAt = registerOutput<String>('deletedAt');
    models = registerOutput<List<Map<String, dynamic>>>('models');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
    uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [GradientaiOpenaiApiKey] resource's state with the given [name] and [id].
  static GradientaiOpenaiApiKey get(
    String name,
    pulumi.Input<String> id, {
    GradientaiOpenaiApiKeyState? state,
  }) {
    return GradientaiOpenaiApiKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GradientaiOpenaiApiKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/gradientaiOpenaiApiKey:GradientaiOpenaiApiKey',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiKey = registerOutput<String>('apiKey');
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    deletedAt = registerOutput<String>('deletedAt');
    models = registerOutput<List<Map<String, dynamic>>>('models');
    this.name = registerOutput<String>('name');
    updatedAt = registerOutput<String>('updatedAt');
    uuid = registerOutput<String>('uuid');
  }
}
