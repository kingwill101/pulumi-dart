// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_schema_schema_field_mode.dart';
import 'google_cloud_dataplex_v1_schema_schema_field_type.dart';

/// Represents a column field within a table schema.
class GoogleCloudDataplexV1SchemaSchemaField {
  /// Optional. User friendly field description. Must be less than or equal to 1024 characters.
  final pulumi.Input<String>? description;
  /// Optional. Any nested field for complex types.
  final pulumi.Input<List<GoogleCloudDataplexV1SchemaSchemaField>>? fields;
  /// Additional field semantics.
  final pulumi.Input<GoogleCloudDataplexV1SchemaSchemaFieldMode> mode;
  /// The name of the field. Must contain only letters, numbers and underscores, with a maximum length of 767 characters, and must begin with a letter or underscore.
  final pulumi.Input<String> name;
  /// The type of field.
  final pulumi.Input<GoogleCloudDataplexV1SchemaSchemaFieldType> type;

  /// Creates a new [GoogleCloudDataplexV1SchemaSchemaField].
  /// [description] Optional. User friendly field description. Must be less than or equal to 1024 characters.
  /// [fields] Optional. Any nested field for complex types.
  /// [mode] Additional field semantics.
  /// [name] The name of the field. Must contain only letters, numbers and underscores, with a maximum length of 767 characters, and must begin with a letter or underscore.
  /// [type] The type of field.
  const GoogleCloudDataplexV1SchemaSchemaField({
    this.description,
    this.fields,
    required this.mode,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'fields': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDataplexV1SchemaSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<GoogleCloudDataplexV1SchemaSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': pulumi.Input.mapInputValue<GoogleCloudDataplexV1SchemaSchemaFieldMode, String>(mode, (value) => value.wireValue),
      'name': name,
      'type': pulumi.Input.mapInputValue<GoogleCloudDataplexV1SchemaSchemaFieldType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDataplexV1SchemaSchemaField.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1SchemaSchemaField(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDataplexV1SchemaSchemaField>(guardedValue, (value) => GoogleCloudDataplexV1SchemaSchemaField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: pulumi.Input.fromValue(GoogleCloudDataplexV1SchemaSchemaFieldMode.fromValue(map['mode']! as String)),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(GoogleCloudDataplexV1SchemaSchemaFieldType.fromValue(map['type']! as String)),
    );
  }
}

