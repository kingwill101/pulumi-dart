// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'json_file_format_compression.dart';
import 'json_file_format_schema_file_format.dart';

/// JSON file format configuration.
class JsonFileFormat {
  /// Compression of the loaded JSON file.
  final pulumi.Input<JsonFileFormatCompression>? compression;
  /// The schema file format along JSON data files.
  final pulumi.Input<JsonFileFormatSchemaFileFormat>? schemaFileFormat;

  /// Creates a new [JsonFileFormat].
  /// [compression] Compression of the loaded JSON file.
  /// [schemaFileFormat] The schema file format along JSON data files.
  JsonFileFormat({
    this.compression,
    this.schemaFileFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?pulumi.Input.mapOptionalInputValue<JsonFileFormatCompression, String>(compression, (value) => value.value),
      'schemaFileFormat': ?pulumi.Input.mapOptionalInputValue<JsonFileFormatSchemaFileFormat, String>(schemaFileFormat, (value) => value.value),
    };
  }

  factory JsonFileFormat.fromMap(Map<String, dynamic> map) {
    return JsonFileFormat(
      compression: map['compression'] == null ? null : (JsonFileFormatCompression.fromValue(map['compression']! as String)).input(),
      schemaFileFormat: map['schemaFileFormat'] == null ? null : (JsonFileFormatSchemaFileFormat.fromValue(map['schemaFileFormat']! as String)).input(),
    );
  }
}

