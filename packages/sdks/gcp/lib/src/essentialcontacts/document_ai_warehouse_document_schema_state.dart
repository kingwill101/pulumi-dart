// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_ai_warehouse_document_schema_property_definition.dart';

/// Input properties used for looking up and filtering DocumentAiWarehouseDocumentSchema resources.
class DocumentAiWarehouseDocumentSchemaState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Name of the schema given by the user.
  final pulumi.Input<String?>? displayName;
  /// Tells whether the document is a folder or a typical document.
  final pulumi.Input<bool?>? documentIsFolder;
  /// The location of the resource.
  final pulumi.Input<String?>? location;
  /// The resource name of the document schema.
  final pulumi.Input<String?>? name;
  /// The unique identifier of the project.
  final pulumi.Input<String?>? projectNumber;
  /// Defines the metadata for a schema property.
  /// Structure is documented below.
  final pulumi.Input<List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>?>? propertyDefinitions;

  /// Creates a new [DocumentAiWarehouseDocumentSchemaState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Name of the schema given by the user.
  /// [documentIsFolder] Tells whether the document is a folder or a typical document.
  /// [location] The location of the resource.
  /// [name] The resource name of the document schema.
  /// [projectNumber] The unique identifier of the project.
  /// [propertyDefinitions] Defines the metadata for a schema property.
  const DocumentAiWarehouseDocumentSchemaState({
    this.deletionPolicy,
    this.displayName,
    this.documentIsFolder,
    this.location,
    this.name,
    this.projectNumber,
    this.propertyDefinitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentIsFolder: (() { final guardedValue = map['documentIsFolder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectNumber: (() { final guardedValue = map['projectNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyDefinitions: (() { final guardedValue = map['propertyDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DocumentAiWarehouseDocumentSchemaPropertyDefinition>(guardedValue, (value) => DocumentAiWarehouseDocumentSchemaPropertyDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
