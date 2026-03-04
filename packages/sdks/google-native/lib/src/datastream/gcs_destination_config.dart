// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'json_file_format.dart';

/// Google Cloud Storage destination configuration
class GcsDestinationConfig {
  /// AVRO file format configuration.
  final pulumi.Input<Map<String, dynamic>>? avroFileFormat;

  /// The maximum duration for which new events are added before a file is closed and a new file is created. Values within the range of 15-60 seconds are allowed.
  final pulumi.Input<String>? fileRotationInterval;

  /// The maximum file size to be saved in the bucket.
  final pulumi.Input<int>? fileRotationMb;

  /// JSON file format configuration.
  final pulumi.Input<JsonFileFormat>? jsonFileFormat;

  /// Path inside the Cloud Storage bucket to write data to.
  final pulumi.Input<String>? path;

  /// Creates a new [GcsDestinationConfig].
  /// [avroFileFormat] AVRO file format configuration.
  /// [fileRotationInterval] The maximum duration for which new events are added before a file is closed and a new file is created. Values within the range of 15-60 seconds are allowed.
  /// [fileRotationMb] The maximum file size to be saved in the bucket.
  /// [jsonFileFormat] JSON file format configuration.
  /// [path] Path inside the Cloud Storage bucket to write data to.
  GcsDestinationConfig({
    this.avroFileFormat,
    this.fileRotationInterval,
    this.fileRotationMb,
    this.jsonFileFormat,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avroFileFormat': ?avroFileFormat,
      'fileRotationInterval': ?fileRotationInterval,
      'fileRotationMb': ?fileRotationMb,
      'jsonFileFormat':
          ?pulumi.Input.mapOptionalInputValue<
            JsonFileFormat,
            Map<String, dynamic>
          >(jsonFileFormat, (value) => value.toMap()),
      'path': ?path,
    };
  }

  factory GcsDestinationConfig.fromMap(Map<String, dynamic> map) {
    return GcsDestinationConfig(
      avroFileFormat: (() {
        final guardedValue = map['avroFileFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      fileRotationInterval: (() {
        final guardedValue = map['fileRotationInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileRotationMb: (() {
        final guardedValue = map['fileRotationMb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      jsonFileFormat: (() {
        final guardedValue = map['jsonFileFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JsonFileFormat.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
