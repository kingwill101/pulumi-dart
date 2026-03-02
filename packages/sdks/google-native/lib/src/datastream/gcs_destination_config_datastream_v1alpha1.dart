// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcs_destination_config_gcs_file_format.dart';
import 'json_file_format_datastream_v1alpha1.dart';

/// Google Cloud Storage destination configuration
class GcsDestinationConfigDatastreamV1alpha1 {
  /// AVRO file format configuration.
  final pulumi.Input<Map<String, dynamic>>? avroFileFormat;
  /// The maximum duration for which new events are added before a file is closed and a new file is created.
  final pulumi.Input<String>? fileRotationInterval;
  /// The maximum file size to be saved in the bucket.
  final pulumi.Input<int>? fileRotationMb;
  /// File format that data should be written in. Deprecated field (b/169501737) - use file_format instead.
  final pulumi.Input<GcsDestinationConfigGcsFileFormat>? gcsFileFormat;
  /// JSON file format configuration.
  final pulumi.Input<JsonFileFormatDatastreamV1alpha1>? jsonFileFormat;
  /// Path inside the Cloud Storage bucket to write data to.
  final pulumi.Input<String>? path;

  /// Creates a new [GcsDestinationConfigDatastreamV1alpha1].
  /// [avroFileFormat] AVRO file format configuration.
  /// [fileRotationInterval] The maximum duration for which new events are added before a file is closed and a new file is created.
  /// [fileRotationMb] The maximum file size to be saved in the bucket.
  /// [gcsFileFormat] File format that data should be written in. Deprecated field (b/169501737) - use file_format instead.
  /// [jsonFileFormat] JSON file format configuration.
  /// [path] Path inside the Cloud Storage bucket to write data to.
  GcsDestinationConfigDatastreamV1alpha1({
    this.avroFileFormat,
    this.fileRotationInterval,
    this.fileRotationMb,
    this.gcsFileFormat,
    this.jsonFileFormat,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avroFileFormat': ?avroFileFormat,
      'fileRotationInterval': ?fileRotationInterval,
      'fileRotationMb': ?fileRotationMb,
      'gcsFileFormat': ?pulumi.Input.mapOptionalInputValue<GcsDestinationConfigGcsFileFormat, String>(gcsFileFormat, (value) => value.value),
      'jsonFileFormat': ?pulumi.Input.mapOptionalInputValue<JsonFileFormatDatastreamV1alpha1, Map<String, dynamic>>(jsonFileFormat, (value) => value.toMap()),
      'path': ?path,
    };
  }

  factory GcsDestinationConfigDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return GcsDestinationConfigDatastreamV1alpha1(
      avroFileFormat: map['avroFileFormat'] == null ? null : ((map['avroFileFormat']! as Map).cast<String, dynamic>()).input(),
      fileRotationInterval: map['fileRotationInterval'] == null ? null : (map['fileRotationInterval']! as String).input(),
      fileRotationMb: map['fileRotationMb'] == null ? null : (map['fileRotationMb']! as int).input(),
      gcsFileFormat: map['gcsFileFormat'] == null ? null : (GcsDestinationConfigGcsFileFormat.fromValue(map['gcsFileFormat']! as String)).input(),
      jsonFileFormat: map['jsonFileFormat'] == null ? null : (JsonFileFormatDatastreamV1alpha1.fromMap((map['jsonFileFormat']! as Map).cast<String, dynamic>())).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
    );
  }
}

