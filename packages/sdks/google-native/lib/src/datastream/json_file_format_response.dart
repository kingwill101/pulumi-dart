// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// JSON file format configuration.
class JsonFileFormatResponse {
  /// Compression of the loaded JSON file.
  final pulumi.Input<String> compression;
  /// The schema file format along JSON data files.
  final pulumi.Input<String> schemaFileFormat;

  /// Creates a new [JsonFileFormatResponse].
  /// [compression] Compression of the loaded JSON file.
  /// [schemaFileFormat] The schema file format along JSON data files.
  const JsonFileFormatResponse({
    required this.compression,
    required this.schemaFileFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': compression,
      'schemaFileFormat': schemaFileFormat,
    };
  }

  factory JsonFileFormatResponse.fromMap(Map<String, dynamic> map) {
    return JsonFileFormatResponse(
      compression: pulumi.Input.fromValue(map['compression'] as String),
      schemaFileFormat: pulumi.Input.fromValue(map['schemaFileFormat'] as String),
    );
  }
}
