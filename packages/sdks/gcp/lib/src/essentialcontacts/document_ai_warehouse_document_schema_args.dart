// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_ai_warehouse_document_schema_property_definition.dart';

/// {@template pulumi_essentialcontacts_document_ai_warehouse_document_schema_document_ai_warehouse_document_schema_args_doc}
/// The set of arguments for DocumentAiWarehouseDocumentSchema.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_document_ai_warehouse_document_schema_document_ai_warehouse_document_schema_args_doc}
class DocumentAiWarehouseDocumentSchemaArgs {
  /// Name of the schema given by the user.
  final pulumi.Input<String> displayName;
  /// Tells whether the document is a folder or a typical document.
  final pulumi.Input<bool>? documentIsFolder;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The unique identifier of the project.
  final pulumi.Input<String> projectNumber;
  /// Defines the metadata for a schema property.
  /// Structure is documented below.
  final pulumi.Input<List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>> propertyDefinitions;

  /// Creates a new [DocumentAiWarehouseDocumentSchemaArgs].
  /// [displayName] Name of the schema given by the user.
  /// [documentIsFolder] Tells whether the document is a folder or a typical document.
  /// [location] The location of the resource.
  /// [projectNumber] The unique identifier of the project.
  /// [propertyDefinitions] Defines the metadata for a schema property.
  DocumentAiWarehouseDocumentSchemaArgs({
    required this.displayName,
    this.documentIsFolder,
    required this.location,
    required this.projectNumber,
    required this.propertyDefinitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'documentIsFolder': ?documentIsFolder,
      'location': location,
      'projectNumber': projectNumber,
      'propertyDefinitions': pulumi.Input.mapInputValue<List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>, List<Map<String, dynamic>>>(propertyDefinitions, (value) => pulumi.Input.encodeList<DocumentAiWarehouseDocumentSchemaPropertyDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DocumentAiWarehouseDocumentSchemaArgs.fromMap(Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaArgs(
      displayName: (map['displayName'] as String).input(),
      documentIsFolder: map['documentIsFolder'] == null ? null : (map['documentIsFolder'] as bool).input(),
      location: (map['location'] as String).input(),
      projectNumber: (map['projectNumber'] as String).input(),
      propertyDefinitions: (pulumi.Input.decodeList<DocumentAiWarehouseDocumentSchemaPropertyDefinition>(map['propertyDefinitions'], (value) => DocumentAiWarehouseDocumentSchemaPropertyDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

