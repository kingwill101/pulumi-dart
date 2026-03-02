// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_config.dart';

/// Configuration for a Cloud Storage subscription.
class CloudStorageConfig {
  /// Optional. If set, message data will be written to Cloud Storage in Avro format.
  final pulumi.Input<AvroConfig>? avroConfig;
  /// User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like "gs://". See the [bucket naming requirements] (https://cloud.google.com/storage/docs/buckets#naming).
  final pulumi.Input<String> bucket;
  /// Optional. User-provided prefix for Cloud Storage filename. See the [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
  final pulumi.Input<String>? filenamePrefix;
  /// Optional. User-provided suffix for Cloud Storage filename. See the [object naming requirements](https://cloud.google.com/storage/docs/objects#naming). Must not end in "/".
  final pulumi.Input<String>? filenameSuffix;
  /// Optional. The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB. The max_bytes limit may be exceeded in cases where messages are larger than the limit.
  final pulumi.Input<String>? maxBytes;
  /// Optional. The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes. May not exceed the subscription's acknowledgement deadline.
  final pulumi.Input<String>? maxDuration;
  /// Optional. If set, message data will be written to Cloud Storage in text format.
  final pulumi.Input<Map<String, dynamic>>? textConfig;

  /// Creates a new [CloudStorageConfig].
  /// [avroConfig] Optional. If set, message data will be written to Cloud Storage in Avro format.
  /// [bucket] User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like "gs://". See the [bucket naming requirements] (https://cloud.google.com/storage/docs/buckets#naming).
  /// [filenamePrefix] Optional. User-provided prefix for Cloud Storage filename. See the [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
  /// [filenameSuffix] Optional. User-provided suffix for Cloud Storage filename. See the [object naming requirements](https://cloud.google.com/storage/docs/objects#naming). Must not end in "/".
  /// [maxBytes] Optional. The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB. The max_bytes limit may be exceeded in cases where messages are larger than the limit.
  /// [maxDuration] Optional. The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes. May not exceed the subscription's acknowledgement deadline.
  /// [textConfig] Optional. If set, message data will be written to Cloud Storage in text format.
  CloudStorageConfig({
    this.avroConfig,
    required this.bucket,
    this.filenamePrefix,
    this.filenameSuffix,
    this.maxBytes,
    this.maxDuration,
    this.textConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avroConfig': ?pulumi.Input.mapOptionalInputValue<AvroConfig, Map<String, dynamic>>(avroConfig, (value) => value.toMap()),
      'bucket': bucket,
      'filenamePrefix': ?filenamePrefix,
      'filenameSuffix': ?filenameSuffix,
      'maxBytes': ?maxBytes,
      'maxDuration': ?maxDuration,
      'textConfig': ?textConfig,
    };
  }

  factory CloudStorageConfig.fromMap(Map<String, dynamic> map) {
    return CloudStorageConfig(
      avroConfig: map['avroConfig'] == null ? null : (AvroConfig.fromMap((map['avroConfig'] as Map).cast<String, dynamic>())).input(),
      bucket: (map['bucket'] as String).input(),
      filenamePrefix: map['filenamePrefix'] == null ? null : (map['filenamePrefix'] as String).input(),
      filenameSuffix: map['filenameSuffix'] == null ? null : (map['filenameSuffix'] as String).input(),
      maxBytes: map['maxBytes'] == null ? null : (map['maxBytes'] as String).input(),
      maxDuration: map['maxDuration'] == null ? null : (map['maxDuration'] as String).input(),
      textConfig: map['textConfig'] == null ? null : ((map['textConfig'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

