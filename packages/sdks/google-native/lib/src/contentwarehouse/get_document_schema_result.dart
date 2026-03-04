// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_property_definition_response.dart';

/// Result data returned by getDocumentSchema.
class GetDocumentSchemaResult {
  /// The time when the document schema is created.
  final String createTime;

  /// Schema description.
  final String description;

  /// Name of the schema given by the user. Must be unique per project.
  final String displayName;

  /// Document Type, true refers the document is a folder, otherwise it is a typical document.
  final bool documentIsFolder;

  /// The resource name of the document schema. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}. The name is ignored when creating a document schema.
  final String name;

  /// Document details.
  final List<GoogleCloudContentwarehouseV1PropertyDefinitionResponse>
  propertyDefinitions;

  /// The time when the document schema is last updated.
  final String updateTime;

  /// Creates a new [GetDocumentSchemaResult].
  /// [createTime] The time when the document schema is created.
  /// [description] Schema description.
  /// [displayName] Name of the schema given by the user. Must be unique per project.
  /// [documentIsFolder] Document Type, true refers the document is a folder, otherwise it is a typical document.
  /// [name] The resource name of the document schema. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}. The name is ignored when creating a document schema.
  /// [propertyDefinitions] Document details.
  /// [updateTime] The time when the document schema is last updated.
  GetDocumentSchemaResult({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.documentIsFolder,
    required this.name,
    required this.propertyDefinitions,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'documentIsFolder': documentIsFolder,
      'name': name,
      'propertyDefinitions':
          pulumi.Input.encodeList<
            GoogleCloudContentwarehouseV1PropertyDefinitionResponse,
            Map<String, dynamic>
          >(propertyDefinitions, (value) => value.toMap()),
      'updateTime': updateTime,
    };
  }

  factory GetDocumentSchemaResult.fromMap(Map<String, dynamic> map) {
    return GetDocumentSchemaResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      documentIsFolder: map['documentIsFolder'] as bool,
      name: map['name'] as String,
      propertyDefinitions:
          pulumi.Input.decodeList<
            GoogleCloudContentwarehouseV1PropertyDefinitionResponse
          >(
            map['propertyDefinitions']!,
            (value) =>
                GoogleCloudContentwarehouseV1PropertyDefinitionResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      updateTime: map['updateTime'] as String,
    );
  }
}
