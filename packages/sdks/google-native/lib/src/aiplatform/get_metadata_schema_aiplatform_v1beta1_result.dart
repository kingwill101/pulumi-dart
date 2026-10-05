// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMetadataSchema.
class GetMetadataSchemaAiplatformV1beta1Result {
  /// Timestamp when this MetadataSchema was created.
  final String? createTime;
  /// Description of the Metadata Schema
  final String? description;
  /// The resource name of the MetadataSchema.
  final String? name;
  /// The raw YAML string representation of the MetadataSchema. The combination of [MetadataSchema.version] and the schema name given by `title` in [MetadataSchema.schema] must be unique within a MetadataStore. The schema is defined as an OpenAPI 3.0.2 [MetadataSchema Object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md#schemaObject)
  final String? schema;
  /// The type of the MetadataSchema. This is a property that identifies which metadata types will use the MetadataSchema.
  final String? schemaType;
  /// The version of the MetadataSchema. The version's format must match the following regular expression: `^[0-9]+.+.+$`, which would allow to order/compare different versions. Example: 1.0.0, 1.0.1, etc.
  final String? schemaVersion;

  /// Creates a new [GetMetadataSchemaAiplatformV1beta1Result].
  /// [createTime] Timestamp when this MetadataSchema was created.
  /// [description] Description of the Metadata Schema
  /// [name] The resource name of the MetadataSchema.
  /// [schema] The raw YAML string representation of the MetadataSchema. The combination of [MetadataSchema.version] and the schema name given by `title` in [MetadataSchema.schema] must be unique within a MetadataStore. The schema is defined as an OpenAPI 3.0.2 [MetadataSchema Object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md#schemaObject)
  /// [schemaType] The type of the MetadataSchema. This is a property that identifies which metadata types will use the MetadataSchema.
  /// [schemaVersion] The version of the MetadataSchema. The version's format must match the following regular expression: `^[0-9]+.+.+$`, which would allow to order/compare different versions. Example: 1.0.0, 1.0.1, etc.
  const GetMetadataSchemaAiplatformV1beta1Result({
    this.createTime,
    this.description,
    this.name,
    this.schema,
    this.schemaType,
    this.schemaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'schema': ?schema,
      'schemaType': ?schemaType,
      'schemaVersion': ?schemaVersion,
    };
  }

  factory GetMetadataSchemaAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetMetadataSchemaAiplatformV1beta1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaType: (() { final guardedValue = map['schemaType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaVersion: (() { final guardedValue = map['schemaVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
