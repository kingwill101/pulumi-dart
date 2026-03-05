import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_type_dialogflow_v2beta1_args.dart';

/// Creates an entity type in the specified agent. Note: You should always train an agent prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
/// Auto-naming is currently not supported for this resource.
class EntityTypeDialogflowV2beta1 extends pulumi.CustomResource {
  /// Optional. Indicates whether the entity type can be automatically expanded.
  late final pulumi.Output<String> autoExpansionMode;
  /// The name of the entity type.
  late final pulumi.Output<String> displayName;
  /// Optional. Enables fuzzy entity extraction during classification.
  late final pulumi.Output<bool> enableFuzzyExtraction;
  /// Optional. The collection of entity entries associated with the entity type.
  late final pulumi.Output<List<Map<String, dynamic>>> entities;
  /// Indicates the kind of entity type.
  late final pulumi.Output<String> kind;
  /// Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  late final pulumi.Output<String?> languageCode;
  late final pulumi.Output<String> location;
  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Supported formats: - `projects//agent/entityTypes/` - `projects//locations//agent/entityTypes/`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [EntityTypeDialogflowV2beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EntityTypeDialogflowV2beta1]. {@macro pulumi_dialogflow_v2beta1_entity_type_dialogflow_v2beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EntityTypeDialogflowV2beta1(
    String name, {
    EntityTypeDialogflowV2beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2beta1:EntityType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoExpansionMode = registerOutput<String>('autoExpansionMode');
    displayName = registerOutput<String>('displayName');
    enableFuzzyExtraction = registerOutput<bool>('enableFuzzyExtraction');
    entities = registerOutput<List<Map<String, dynamic>>>('entities');
    kind = registerOutput<String>('kind');
    languageCode = registerOutput<String?>('languageCode');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
