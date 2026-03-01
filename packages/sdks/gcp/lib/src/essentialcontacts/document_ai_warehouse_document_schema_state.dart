// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_ai_warehouse_document_schema_property_definition.dart';

/// Input properties used for looking up and filtering DocumentAiWarehouseDocumentSchema resources.
class DocumentAiWarehouseDocumentSchemaState {
  /// Name of the schema given by the user.
  final pulumi.Input<String>? displayName;
  /// Tells whether the document is a folder or a typical document.
  final pulumi.Input<bool>? documentIsFolder;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The resource name of the document schema.
  final pulumi.Input<String>? name;
  /// The unique identifier of the project.
  final pulumi.Input<String>? projectNumber;
  /// Defines the metadata for a schema property.
  /// Structure is documented below.
  final pulumi.Input<List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>>? propertyDefinitions;

  /// Creates a new [DocumentAiWarehouseDocumentSchemaState].
  /// [displayName] Name of the schema given by the user.
  /// [documentIsFolder] Tells whether the document is a folder or a typical document.
  /// [location] The location of the resource.
  /// [name] The resource name of the document schema.
  /// [projectNumber] The unique identifier of the project.
  /// [propertyDefinitions] Defines the metadata for a schema property.
  DocumentAiWarehouseDocumentSchemaState({
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? documentIsFolder,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectNumber,
    pulumi.Output<List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>>? propertyDefinitions,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      documentIsFolder = pulumi.Input.asOptionalInput<bool>(documentIsFolder),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectNumber = pulumi.Input.asOptionalInput<String>(projectNumber),
      propertyDefinitions = pulumi.Input.asOptionalInput<List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>>(propertyDefinitions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'documentIsFolder': ?documentIsFolder,
      'location': ?location,
      'name': ?name,
      'projectNumber': ?projectNumber,
      'propertyDefinitions': ?pulumi.Input.mapOptionalInputValue<List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>, List<Map<String, dynamic>>>(propertyDefinitions, (value) => pulumi.Input.encodeList<DocumentAiWarehouseDocumentSchemaPropertyDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DocumentAiWarehouseDocumentSchemaState.fromMap(Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaState(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      documentIsFolder: map['documentIsFolder'] == null ? null : pulumi.Output.create<bool>(map['documentIsFolder'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectNumber: map['projectNumber'] == null ? null : pulumi.Output.create<String>(map['projectNumber'] as String),
      propertyDefinitions: map['propertyDefinitions'] == null ? null : pulumi.Output.create<List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>>(pulumi.Input.decodeList<DocumentAiWarehouseDocumentSchemaPropertyDefinition>(map['propertyDefinitions'], (value) => DocumentAiWarehouseDocumentSchemaPropertyDefinition.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

