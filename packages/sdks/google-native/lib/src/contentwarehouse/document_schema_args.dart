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
    this.description,
    required this.displayName,
    this.documentIsFolder,
    this.location,
    this.name,
    this.project,
    this.propertyDefinitions,
  });

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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      documentIsFolder: map['documentIsFolder'] == null ? null : (map['documentIsFolder'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      propertyDefinitions: map['propertyDefinitions'] == null ? null : (pulumi.Input.decodeList<GoogleCloudContentwarehouseV1PropertyDefinition>(map['propertyDefinitions'], (value) => GoogleCloudContentwarehouseV1PropertyDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

