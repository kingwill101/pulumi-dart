import 'package:pulumi/pulumi.dart' as pulumi;
import 'serving_config_args.dart';
import 'serving_config_state.dart';

/// Represents a serving config which is a singleton resource under engine. A default
/// serving config is automatically provisioned and deleted with its parent engine.
///
///
/// To get more information about ServingConfig, see:
///
/// * [API documentation](https://cloud.google.com/gemini/enterprise/docs/reference/rest/v1/projects.locations.collections.engines.servingConfigs)
///
/// ## Import
///
/// ServingConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/servingConfigs/{{serving_config_id}}`
/// * `{{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{serving_config_id}}`
/// * `{{location}}/{{collection_id}}/{{engine_id}}/{{serving_config_id}}`
///
///
/// When using the `pulumi import` command, ServingConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/servingConfig:ServingConfig default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/servingConfigs/{{serving_config_id}}
/// $ pulumi import gcp:discoveryengine/servingConfig:ServingConfig default {{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{serving_config_id}}
/// $ pulumi import gcp:discoveryengine/servingConfig:ServingConfig default {{location}}/{{collection_id}}/{{engine_id}}/{{serving_config_id}}
/// ```
class ServingConfig extends pulumi.CustomResource {
  /// The resource IDs of the boost controls to be applied.
  late final pulumi.Output<List<String>?> boostControlIds;
  /// The collection ID. Currently only accepts "defaultCollection".
  late final pulumi.Output<String?> collectionId;
  /// The ID of the engine associated with the serving config.
  late final pulumi.Output<String> engineId;
  /// The resource IDs of the filter controls to be applied.
  late final pulumi.Output<List<String>?> filterControlIds;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;
  /// The unique full resource name of the serving config. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/servingConfigs/{serving_config_id}`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The resource IDs of the promote controls to be applied.
  late final pulumi.Output<List<String>?> promoteControlIds;
  /// The resource IDs of the redirect controls to be applied.
  late final pulumi.Output<List<String>?> redirectControlIds;
  /// 'The unique ID of the serving config. Currently only accepts "defaultSearch".'
  late final pulumi.Output<String?> servingConfigId;
  /// The resource IDs of the synonyms controls to be applied.
  late final pulumi.Output<List<String>?> synonymsControlIds;

  /// Creates a new [ServingConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServingConfig]. {@macro pulumi_discoveryengine_serving_config_serving_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServingConfig(
    String name, {
    ServingConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/servingConfig:ServingConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    boostControlIds = registerOutput<List<String>?>('boostControlIds');
    collectionId = registerOutput<String?>('collectionId');
    engineId = registerOutput<String>('engineId');
    filterControlIds = registerOutput<List<String>?>('filterControlIds');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    promoteControlIds = registerOutput<List<String>?>('promoteControlIds');
    redirectControlIds = registerOutput<List<String>?>('redirectControlIds');
    servingConfigId = registerOutput<String?>('servingConfigId');
    synonymsControlIds = registerOutput<List<String>?>('synonymsControlIds');
  }

  /// Gets an existing [ServingConfig] resource's state with the given [name] and [id].
  static ServingConfig get(
    String name,
    pulumi.Input<String> id, {
    ServingConfigState? state,
  }) {
    return ServingConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServingConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/servingConfig:ServingConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    boostControlIds = registerOutput<List<String>?>('boostControlIds');
    collectionId = registerOutput<String?>('collectionId');
    engineId = registerOutput<String>('engineId');
    filterControlIds = registerOutput<List<String>?>('filterControlIds');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    promoteControlIds = registerOutput<List<String>?>('promoteControlIds');
    redirectControlIds = registerOutput<List<String>?>('redirectControlIds');
    servingConfigId = registerOutput<String?>('servingConfigId');
    synonymsControlIds = registerOutput<List<String>?>('synonymsControlIds');
  }
}
