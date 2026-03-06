// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_config_response.dart';

/// Configuration for a Cloud Storage subscription.
class CloudStorageConfigResponse {
  /// Optional. If set, message data will be written to Cloud Storage in Avro format.
  final pulumi.Input<AvroConfigResponse> avroConfig;
  /// User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like "gs://". See the [bucket naming requirements] (https://cloud.google.com/storage/docs/buckets#naming).
  final pulumi.Input<String> bucket;
  /// Optional. User-provided prefix for Cloud Storage filename. See the [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
  final pulumi.Input<String> filenamePrefix;
  /// Optional. User-provided suffix for Cloud Storage filename. See the [object naming requirements](https://cloud.google.com/storage/docs/objects#naming). Must not end in "/".
  final pulumi.Input<String> filenameSuffix;
  /// Optional. The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB. The max_bytes limit may be exceeded in cases where messages are larger than the limit.
  final pulumi.Input<String> maxBytes;
  /// Optional. The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes. May not exceed the subscription's acknowledgement deadline.
  final pulumi.Input<String> maxDuration;
  /// An output-only field that indicates whether or not the subscription can receive messages.
  final pulumi.Input<String> state;
  /// Optional. If set, message data will be written to Cloud Storage in text format.
  final pulumi.Input<Map<String, dynamic>> textConfig;

  /// Creates a new [CloudStorageConfigResponse].
  /// [avroConfig] Optional. If set, message data will be written to Cloud Storage in Avro format.
  /// [bucket] User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like "gs://". See the [bucket naming requirements] (https://cloud.google.com/storage/docs/buckets#naming).
  /// [filenamePrefix] Optional. User-provided prefix for Cloud Storage filename. See the [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
  /// [filenameSuffix] Optional. User-provided suffix for Cloud Storage filename. See the [object naming requirements](https://cloud.google.com/storage/docs/objects#naming). Must not end in "/".
  /// [maxBytes] Optional. The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB. The max_bytes limit may be exceeded in cases where messages are larger than the limit.
  /// [maxDuration] Optional. The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes. May not exceed the subscription's acknowledgement deadline.
  /// [state] An output-only field that indicates whether or not the subscription can receive messages.
  /// [textConfig] Optional. If set, message data will be written to Cloud Storage in text format.
  const CloudStorageConfigResponse({
    required this.avroConfig,
    required this.bucket,
    required this.filenamePrefix,
    required this.filenameSuffix,
    required this.maxBytes,
    required this.maxDuration,
    required this.state,
    required this.textConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avroConfig': pulumi.Input.mapInputValue<AvroConfigResponse, Map<String, dynamic>>(avroConfig, (value) => value.toMap()),
      'bucket': bucket,
      'filenamePrefix': filenamePrefix,
      'filenameSuffix': filenameSuffix,
      'maxBytes': maxBytes,
      'maxDuration': maxDuration,
      'state': state,
      'textConfig': textConfig,
    };
  }

  factory CloudStorageConfigResponse.fromMap(Map<String, dynamic> map) {
    return CloudStorageConfigResponse(
      avroConfig: pulumi.Input.fromValue(AvroConfigResponse.fromMap((map['avroConfig']! as Map).cast<String, dynamic>())),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      filenamePrefix: pulumi.Input.fromValue(map['filenamePrefix'] as String),
      filenameSuffix: pulumi.Input.fromValue(map['filenameSuffix'] as String),
      maxBytes: pulumi.Input.fromValue(map['maxBytes'] as String),
      maxDuration: pulumi.Input.fromValue(map['maxDuration'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      textConfig: pulumi.Input.fromValue((map['textConfig']! as Map).cast<String, dynamic>()),
    );
  }
}

