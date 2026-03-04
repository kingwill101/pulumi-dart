// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'json_file_format_response_datastream_v1alpha1.dart';

/// Google Cloud Storage destination configuration
class GcsDestinationConfigResponseDatastreamV1alpha1 {
  /// AVRO file format configuration.
  final pulumi.Input<Map<String, dynamic>> avroFileFormat;

  /// The maximum duration for which new events are added before a file is closed and a new file is created.
  final pulumi.Input<String> fileRotationInterval;

  /// The maximum file size to be saved in the bucket.
  final pulumi.Input<int> fileRotationMb;

  /// File format that data should be written in. Deprecated field (b/169501737) - use file_format instead.
  final pulumi.Input<String> gcsFileFormat;

  /// JSON file format configuration.
  final pulumi.Input<JsonFileFormatResponseDatastreamV1alpha1> jsonFileFormat;

  /// Path inside the Cloud Storage bucket to write data to.
  final pulumi.Input<String> path;

  /// Creates a new [GcsDestinationConfigResponseDatastreamV1alpha1].
  /// [avroFileFormat] AVRO file format configuration.
  /// [fileRotationInterval] The maximum duration for which new events are added before a file is closed and a new file is created.
  /// [fileRotationMb] The maximum file size to be saved in the bucket.
  /// [gcsFileFormat] File format that data should be written in. Deprecated field (b/169501737) - use file_format instead.
  /// [jsonFileFormat] JSON file format configuration.
  /// [path] Path inside the Cloud Storage bucket to write data to.
  GcsDestinationConfigResponseDatastreamV1alpha1({
    required this.avroFileFormat,
    required this.fileRotationInterval,
    required this.fileRotationMb,
    required this.gcsFileFormat,
    required this.jsonFileFormat,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avroFileFormat': avroFileFormat,
      'fileRotationInterval': fileRotationInterval,
      'fileRotationMb': fileRotationMb,
      'gcsFileFormat': gcsFileFormat,
      'jsonFileFormat':
          pulumi.Input.mapInputValue<
            JsonFileFormatResponseDatastreamV1alpha1,
            Map<String, dynamic>
          >(jsonFileFormat, (value) => value.toMap()),
      'path': path,
    };
  }

  factory GcsDestinationConfigResponseDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return GcsDestinationConfigResponseDatastreamV1alpha1(
      avroFileFormat: pulumi.Input.fromValue(
        (map['avroFileFormat']! as Map).cast<String, dynamic>(),
      ),
      fileRotationInterval: pulumi.Input.fromValue(
        map['fileRotationInterval'] as String,
      ),
      fileRotationMb: pulumi.Input.fromValue(map['fileRotationMb'] as int),
      gcsFileFormat: pulumi.Input.fromValue(map['gcsFileFormat'] as String),
      jsonFileFormat: pulumi.Input.fromValue(
        JsonFileFormatResponseDatastreamV1alpha1.fromMap(
          (map['jsonFileFormat']! as Map).cast<String, dynamic>(),
        ),
      ),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
