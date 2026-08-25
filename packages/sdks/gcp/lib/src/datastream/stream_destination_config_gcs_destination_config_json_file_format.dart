// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamDestinationConfigGcsDestinationConfigJsonFileFormat {
  /// Compression of the loaded JSON file.
  /// Possible values are: `NO_COMPRESSION`, `GZIP`.
  final pulumi.Input<String?>? compression;
  /// The schema file format along JSON data files.
  /// Possible values are: `NO_SCHEMA_FILE`, `AVRO_SCHEMA_FILE`.
  final pulumi.Input<String?>? schemaFileFormat;

  /// Creates a new [StreamDestinationConfigGcsDestinationConfigJsonFileFormat].
  /// [compression] Compression of the loaded JSON file.
  /// [schemaFileFormat] The schema file format along JSON data files.
  const StreamDestinationConfigGcsDestinationConfigJsonFileFormat({
    this.compression,
    this.schemaFileFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?compression,
      'schemaFileFormat': ?schemaFileFormat,
    };
  }

  factory StreamDestinationConfigGcsDestinationConfigJsonFileFormat.fromMap(Map<String, dynamic> map) {
    return StreamDestinationConfigGcsDestinationConfigJsonFileFormat(
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaFileFormat: (() { final guardedValue = map['schemaFileFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
