import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';

/// Creates a Schema.
class Schema extends pulumi.CustomResource {
  late final pulumi.Output<String> collectionId;
  late final pulumi.Output<String> dataStoreId;

  /// Configurations for fields of the schema.
  late final pulumi.Output<List<Map<String, dynamic>>> fieldConfigs;

  /// The JSON representation of the schema.
  late final pulumi.Output<String> jsonSchema;
  late final pulumi.Output<String> location;

  /// Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Required. The ID to use for the Schema, which will become the final component of the Schema.name. This field should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  late final pulumi.Output<String> schemaId;

  /// The structured representation of the schema.
  late final pulumi.Output<Map<String, String>> structSchema;

  /// Creates a new [Schema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schema]. {@macro pulumi_discoveryengine_v1alpha_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schema(String name, {SchemaArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:discoveryengine/v1alpha:Schema',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    collectionId = registerOutput<String>('collectionId');
    dataStoreId = registerOutput<String>('dataStoreId');
    fieldConfigs = registerOutput<List<Map<String, dynamic>>>('fieldConfigs');
    jsonSchema = registerOutput<String>('jsonSchema');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    schemaId = registerOutput<String>('schemaId');
    structSchema = registerOutput<Map<String, String>>('structSchema');
  }
}
