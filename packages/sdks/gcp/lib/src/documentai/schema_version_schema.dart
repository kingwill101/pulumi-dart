// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_version_schema_entity_type.dart';
import 'schema_version_schema_metadata.dart';

class SchemaVersionSchema {
  /// Description of the schema.
  final pulumi.Input<String?>? description;
  /// Display name to show users.
  final pulumi.Input<String?>? displayName;
  /// Document-level prompt provided by the user. This custom text is injected into the AI model's prompt to provide extra, document-wide guidance for processing.
  final pulumi.Input<String?>? documentPrompt;
  /// Entity types of the schema.
  /// Structure is documented below.
  final pulumi.Input<List<SchemaVersionSchemaEntityType>?>? entityTypes;
  /// Metadata of the schema.
  /// Structure is documented below.
  final pulumi.Input<SchemaVersionSchemaMetadata?>? metadata;

  /// Creates a new [SchemaVersionSchema].
  /// [description] Description of the schema.
  /// [displayName] Display name to show users.
  /// [documentPrompt] Document-level prompt provided by the user. This custom text is injected into the AI model's prompt to provide extra, document-wide guidance for processing.
  /// [entityTypes] Entity types of the schema.
  /// [metadata] Metadata of the schema.
  const SchemaVersionSchema({
    this.description,
    this.displayName,
    this.documentPrompt,
    this.entityTypes,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'documentPrompt': ?documentPrompt,
      'entityTypes': ?pulumi.Input.mapOptionalInputValue<List<SchemaVersionSchemaEntityType>, List<Map<String, dynamic>>>(entityTypes, (value) => pulumi.Input.encodeList<SchemaVersionSchemaEntityType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?pulumi.Input.mapOptionalInputValue<SchemaVersionSchemaMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory SchemaVersionSchema.fromMap(Map<String, dynamic> map) {
    return SchemaVersionSchema(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentPrompt: (() { final guardedValue = map['documentPrompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityTypes: (() { final guardedValue = map['entityTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SchemaVersionSchemaEntityType>(guardedValue, (value) => SchemaVersionSchemaEntityType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchemaVersionSchemaMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
