// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a column field within a table schema.
class GoogleCloudDataplexV1SchemaSchemaFieldResponse {
  /// Optional. User friendly field description. Must be less than or equal to 1024 characters.
  final pulumi.Input<String> description;
  /// Optional. Any nested field for complex types.
  final pulumi.Input<List<GoogleCloudDataplexV1SchemaSchemaFieldResponse>> fields;
  /// Additional field semantics.
  final pulumi.Input<String> mode;
  /// The name of the field. Must contain only letters, numbers and underscores, with a maximum length of 767 characters, and must begin with a letter or underscore.
  final pulumi.Input<String> name;
  /// The type of field.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDataplexV1SchemaSchemaFieldResponse].
  /// [description] Optional. User friendly field description. Must be less than or equal to 1024 characters.
  /// [fields] Optional. Any nested field for complex types.
  /// [mode] Additional field semantics.
  /// [name] The name of the field. Must contain only letters, numbers and underscores, with a maximum length of 767 characters, and must begin with a letter or underscore.
  /// [type] The type of field.
  GoogleCloudDataplexV1SchemaSchemaFieldResponse({
    required this.description,
    required this.fields,
    required this.mode,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'fields': pulumi.Input.mapInputValue<List<GoogleCloudDataplexV1SchemaSchemaFieldResponse>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<GoogleCloudDataplexV1SchemaSchemaFieldResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': mode,
      'name': name,
      'type': type,
    };
  }

  factory GoogleCloudDataplexV1SchemaSchemaFieldResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1SchemaSchemaFieldResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDataplexV1SchemaSchemaFieldResponse>(map['fields']!, (value) => GoogleCloudDataplexV1SchemaSchemaFieldResponse.fromMap((value as Map).cast<String, dynamic>()))),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

