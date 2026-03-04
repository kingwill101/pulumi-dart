// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'json_file_format_compression_datastream_v1alpha1.dart';
import 'json_file_format_schema_file_format_datastream_v1alpha1.dart';

/// JSON file format configuration.
class JsonFileFormatDatastreamV1alpha1 {
  /// Compression of the loaded JSON file.
  final pulumi.Input<JsonFileFormatCompressionDatastreamV1alpha1>? compression;

  /// The schema file format along JSON data files.
  final pulumi.Input<JsonFileFormatSchemaFileFormatDatastreamV1alpha1>?
  schemaFileFormat;

  /// Creates a new [JsonFileFormatDatastreamV1alpha1].
  /// [compression] Compression of the loaded JSON file.
  /// [schemaFileFormat] The schema file format along JSON data files.
  JsonFileFormatDatastreamV1alpha1({this.compression, this.schemaFileFormat});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression':
          ?pulumi.Input.mapOptionalInputValue<
            JsonFileFormatCompressionDatastreamV1alpha1,
            String
          >(compression, (value) => value.wireValue),
      'schemaFileFormat':
          ?pulumi.Input.mapOptionalInputValue<
            JsonFileFormatSchemaFileFormatDatastreamV1alpha1,
            String
          >(schemaFileFormat, (value) => value.wireValue),
    };
  }

  factory JsonFileFormatDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return JsonFileFormatDatastreamV1alpha1(
      compression: (() {
        final guardedValue = map['compression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JsonFileFormatCompressionDatastreamV1alpha1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      schemaFileFormat: (() {
        final guardedValue = map['schemaFileFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JsonFileFormatSchemaFileFormatDatastreamV1alpha1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
