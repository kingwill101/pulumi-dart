import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_schema_args.dart';
import 'google_cloud_contentwarehouse_v1_property_definition_response.dart';

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
  late final pulumi.Output<List<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>> propertyDefinitions;
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
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'project']).merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    documentIsFolder = registerOutput<bool>('documentIsFolder');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    propertyDefinitions = registerOutput<List<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>>('propertyDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>(guardedValue, (value) => GoogleCloudContentwarehouseV1PropertyDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [DocumentSchema] resource.
  DocumentSchema.reference(String urn)
    : super(
        'google-native:contentwarehouse/v1:DocumentSchema',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    documentIsFolder = registerOutput<bool>('documentIsFolder');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    propertyDefinitions = registerOutput<List<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>>('propertyDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>(guardedValue, (value) => GoogleCloudContentwarehouseV1PropertyDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }
}
