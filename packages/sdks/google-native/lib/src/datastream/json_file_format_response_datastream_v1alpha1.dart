// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// JSON file format configuration.
class JsonFileFormatResponseDatastreamV1alpha1 {
  /// Compression of the loaded JSON file.
  final pulumi.Input<String> compression;
  /// The schema file format along JSON data files.
  final pulumi.Input<String> schemaFileFormat;

  /// Creates a new [JsonFileFormatResponseDatastreamV1alpha1].
  /// [compression] Compression of the loaded JSON file.
  /// [schemaFileFormat] The schema file format along JSON data files.
  JsonFileFormatResponseDatastreamV1alpha1({
    required this.compression,
    required this.schemaFileFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': compression,
      'schemaFileFormat': schemaFileFormat,
    };
  }

  factory JsonFileFormatResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return JsonFileFormatResponseDatastreamV1alpha1(
      compression: (map['compression'] as String).input(),
      schemaFileFormat: (map['schemaFileFormat'] as String).input(),
    );
  }
}

