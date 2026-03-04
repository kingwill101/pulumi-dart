import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_engine_config_args.dart';
import 'ai_rag_engine_config_rag_managed_db_config.dart';
import 'ai_rag_engine_config_state.dart';

/// Vertex AI RAG Engine lets you scale your RagManagedDb instance based on your usage and performance requirements using a choice of two tiers, and optionally, lets you delete your Vertex AI RAG Engine data using a third tier. The tier is a project-level setting that's available in the RagEngineConfig resource that impacts all RAG corpora using RagManagedDb. The following tiers are available in RagEngineConfig: Basic, Scaled and Unprovisioned.
///
///
/// To get more information about RagEngineConfig, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/generative-ai/docs/reference/rest/v1/RagEngineConfig)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/generative-ai/docs/rag-engine/understanding-ragmanageddb)
///
/// ## Example Usage
///
/// ## Import
///
/// RagEngineConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/ragEngineConfig`
///
/// * `{{project}}/{{region}}`
///
/// * `{{region}}`
///
/// When using the `pulumi import` command, RagEngineConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiRagEngineConfig:AiRagEngineConfig default projects/{{project}}/locations/{{region}}/ragEngineConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiRagEngineConfig:AiRagEngineConfig default {{project}}/{{region}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiRagEngineConfig:AiRagEngineConfig default {{region}}
/// ```
class AiRagEngineConfig extends pulumi.CustomResource {
  /// The resource name of the Dataset. This value is set by Google.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Required. The config of the RagManagedDb used by RagEngine.
  /// Structure is documented below.
  late final pulumi.Output<AiRagEngineConfigRagManagedDbConfig>
  ragManagedDbConfig;

  /// The region of the RagEngineConfig. eg us-central1
  late final pulumi.Output<String> region;

  /// Creates a new [AiRagEngineConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiRagEngineConfig]. {@macro pulumi_vertex_ai_rag_engine_config_ai_rag_engine_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiRagEngineConfig(
    String name, {
    AiRagEngineConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:vertex/aiRagEngineConfig:AiRagEngineConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    ragManagedDbConfig = registerOutput<AiRagEngineConfigRagManagedDbConfig>(
      'ragManagedDbConfig',
    );
    region = registerOutput<String>('region');
  }

  /// Gets an existing [AiRagEngineConfig] resource's state with the given [name] and [id].
  static AiRagEngineConfig get(
    String name,
    pulumi.Input<String> id, {
    AiRagEngineConfigState? state,
  }) {
    return AiRagEngineConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AiRagEngineConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:vertex/aiRagEngineConfig:AiRagEngineConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    ragManagedDbConfig = registerOutput<AiRagEngineConfigRagManagedDbConfig>(
      'ragManagedDbConfig',
    );
    region = registerOutput<String>('region');
  }
}
