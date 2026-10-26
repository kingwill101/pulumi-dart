// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_property_definition_response.dart';

/// Result data returned by getDocumentSchema.
class GetDocumentSchemaResult {
  /// The time when the document schema is created.
  final String? createTime;
  /// Schema description.
  final String? description;
  /// Name of the schema given by the user. Must be unique per project.
  final String? displayName;
  /// Document Type, true refers the document is a folder, otherwise it is a typical document.
  final bool? documentIsFolder;
  /// The resource name of the document schema. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}. The name is ignored when creating a document schema.
  final String? name;
  /// Document details.
  final List<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>? propertyDefinitions;
  /// The time when the document schema is last updated.
  final String? updateTime;

  /// Creates a new [GetDocumentSchemaResult].
  /// [createTime] The time when the document schema is created.
  /// [description] Schema description.
  /// [displayName] Name of the schema given by the user. Must be unique per project.
  /// [documentIsFolder] Document Type, true refers the document is a folder, otherwise it is a typical document.
  /// [name] The resource name of the document schema. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}. The name is ignored when creating a document schema.
  /// [propertyDefinitions] Document details.
  /// [updateTime] The time when the document schema is last updated.
  const GetDocumentSchemaResult({
    this.createTime,
    this.description,
    this.displayName,
    this.documentIsFolder,
    this.name,
    this.propertyDefinitions,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'documentIsFolder': ?documentIsFolder,
      'name': ?name,
      'propertyDefinitions': ?(() { final guardedValue = propertyDefinitions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudContentwarehouseV1PropertyDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
    };
  }

  factory GetDocumentSchemaResult.fromMap(Map<String, dynamic> map) {
    return GetDocumentSchemaResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentIsFolder: (() { final guardedValue = map['documentIsFolder']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      propertyDefinitions: (() { final guardedValue = map['propertyDefinitions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>(guardedValue, (value) => GoogleCloudContentwarehouseV1PropertyDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
