// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_property_definition.dart';

/// {@template pulumi_contentwarehouse_v1_document_schema_args_doc}
/// The set of arguments for DocumentSchema.
/// {@endtemplate}
/// {@macro pulumi_contentwarehouse_v1_document_schema_args_doc}
class DocumentSchemaArgs {
  /// Schema description.
  final pulumi.Input<String>? description;
  /// Name of the schema given by the user. Must be unique per project.
  final pulumi.Input<String> displayName;
  /// Document Type, true refers the document is a folder, otherwise it is a typical document.
  final pulumi.Input<bool>? documentIsFolder;
  final pulumi.Input<String>? location;
  /// The resource name of the document schema. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}. The name is ignored when creating a document schema.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Document details.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1PropertyDefinition>>? propertyDefinitions;

  /// Creates a new [DocumentSchemaArgs].
  /// [description] Schema description.
  /// [displayName] Name of the schema given by the user. Must be unique per project.
  /// [documentIsFolder] Document Type, true refers the document is a folder, otherwise it is a typical document.
  /// [location] Optional.
  /// [name] The resource name of the document schema. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}. The name is ignored when creating a document schema.
  /// [project] Optional.
  /// [propertyDefinitions] Document details.
  DocumentSchemaArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<bool>? documentIsFolder,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<List<GoogleCloudContentwarehouseV1PropertyDefinition>>? propertyDefinitions,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      documentIsFolder = pulumi.Input.asOptionalInput<bool>(documentIsFolder),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      propertyDefinitions = pulumi.Input.asOptionalInput<List<GoogleCloudContentwarehouseV1PropertyDefinition>>(propertyDefinitions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'documentIsFolder': ?documentIsFolder,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'propertyDefinitions': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudContentwarehouseV1PropertyDefinition>, List<Map<String, dynamic>>>(propertyDefinitions, (value) => pulumi.Input.encodeList<GoogleCloudContentwarehouseV1PropertyDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DocumentSchemaArgs.fromMap(Map<String, dynamic> map) {
    return DocumentSchemaArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      documentIsFolder: map['documentIsFolder'] == null ? null : pulumi.Output.create<bool>(map['documentIsFolder'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      propertyDefinitions: map['propertyDefinitions'] == null ? null : pulumi.Output.create<List<GoogleCloudContentwarehouseV1PropertyDefinition>>(pulumi.Input.decodeList<GoogleCloudContentwarehouseV1PropertyDefinition>(map['propertyDefinitions'], (value) => GoogleCloudContentwarehouseV1PropertyDefinition.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

