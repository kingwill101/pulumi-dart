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
  const JsonFileFormat({
    this.compression,
    this.schemaFileFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?pulumi.Input.mapOptionalInputValue<JsonFileFormatCompression, String>(compression, (value) => value.wireValue),
      'schemaFileFormat': ?pulumi.Input.mapOptionalInputValue<JsonFileFormatSchemaFileFormat, String>(schemaFileFormat, (value) => value.wireValue),
    };
  }

  factory JsonFileFormat.fromMap(Map<String, dynamic> map) {
    return JsonFileFormat(
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JsonFileFormatCompression.fromValue(guardedValue as String)); })(),
      schemaFileFormat: (() { final guardedValue = map['schemaFileFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JsonFileFormatSchemaFileFormat.fromValue(guardedValue as String)); })(),
    );
  }
}

