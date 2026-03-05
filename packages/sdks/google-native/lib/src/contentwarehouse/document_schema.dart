import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_schema_args.dart';

/// Creates a document schema.
class DocumentSchema extends pulumi.CustomResource {
  /// The time when the document schema is created.
  late final pulumi.Output<String> createTime;
  /// Schema description.
  late final pulumi.Output<String> description;
  /// Name of the schema given by the user. Must be unique per project.
  late final pulumi.Output<String> displayName;
  /// Document Type, true refers the document is a folder, otherwise it is a typical document.
  late final pulumi.Output<bool> documentIsFolder;
  late final pulumi.Output<String> location;
  /// The resource name of the document schema. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}. The name is ignored when creating a document schema.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Document details.
  late final pulumi.Output<List<Map<String, dynamic>>> propertyDefinitions;
  /// The time when the document schema is last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DocumentSchema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DocumentSchema]. {@macro pulumi_contentwarehouse_v1_document_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DocumentSchema(
    String name, {
    DocumentSchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:contentwarehouse/v1:DocumentSchema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    documentIsFolder = registerOutput<bool>('documentIsFolder');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    propertyDefinitions = registerOutput<List<Map<String, dynamic>>>('propertyDefinitions');
    updateTime = registerOutput<String>('updateTime');
  }
}
