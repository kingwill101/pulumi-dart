// ignore_for_file: unused_element, unnecessary_cast


/// JSON file format configuration.
class JsonFileFormatResponse {
  /// Compression of the loaded JSON file.
  final String compression;
  /// The schema file format along JSON data files.
  final String schemaFileFormat;

  /// Creates a new [JsonFileFormatResponse].
  /// [compression] Compression of the loaded JSON file.
  /// [schemaFileFormat] The schema file format along JSON data files.
  JsonFileFormatResponse({
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
      compression: map['compression'] as String,
      schemaFileFormat: map['schemaFileFormat'] as String,
    );
  }
}

