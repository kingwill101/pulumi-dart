// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_cloud_storage_config_avro_config.dart';

class GetSubscriptionCloudStorageConfig {
  /// If set, message data will be written to Cloud Storage in Avro format.
  final pulumi.Input<List<GetSubscriptionCloudStorageConfigAvroConfig>> avroConfigs;
  /// User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like "gs://".
  final pulumi.Input<String> bucket;
  /// User-provided format string specifying how to represent datetimes in Cloud Storage filenames.
  final pulumi.Input<String> filenameDatetimeFormat;
  /// User-provided prefix for Cloud Storage filename.
  final pulumi.Input<String> filenamePrefix;
  /// User-provided suffix for Cloud Storage filename. Must not end in "/".
  final pulumi.Input<String> filenameSuffix;
  /// The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB.
  /// The maxBytes limit may be exceeded in cases where messages are larger than the limit.
  final pulumi.Input<int> maxBytes;
  /// The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes.
  /// May not exceed the subscription's acknowledgement deadline.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String> maxDuration;
  /// The maximum messages that can be written to a Cloud Storage file before a new file is created. Min 1000 messages.
  final pulumi.Input<int> maxMessages;
  /// The service account to use to write to Cloud Storage. If not specified, the Pub/Sub
  /// [service agent](https://cloud.google.com/iam/docs/service-agents),
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
  final pulumi.Input<String> serviceAccountEmail;
  /// An output-only field that indicates whether or not the subscription can receive messages.
  final pulumi.Input<String> state;

  /// Creates a new [GetSubscriptionCloudStorageConfig].
  /// [avroConfigs] If set, message data will be written to Cloud Storage in Avro format.
  /// [bucket] User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like "gs://".
  /// [filenameDatetimeFormat] User-provided format string specifying how to represent datetimes in Cloud Storage filenames.
  /// [filenamePrefix] User-provided prefix for Cloud Storage filename.
  /// [filenameSuffix] User-provided suffix for Cloud Storage filename. Must not end in "/".
  /// [maxBytes] The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB.
  /// [maxDuration] The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes.
  /// [maxMessages] The maximum messages that can be written to a Cloud Storage file before a new file is created. Min 1000 messages.
  /// [serviceAccountEmail] The service account to use to write to Cloud Storage. If not specified, the Pub/Sub
  /// [state] An output-only field that indicates whether or not the subscription can receive messages.
  const GetSubscriptionCloudStorageConfig({
    required this.avroConfigs,
    required this.bucket,
    required this.filenameDatetimeFormat,
    required this.filenamePrefix,
    required this.filenameSuffix,
    required this.maxBytes,
    required this.maxDuration,
    required this.maxMessages,
    required this.serviceAccountEmail,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avroConfigs': pulumi.Input.mapInputValue<List<GetSubscriptionCloudStorageConfigAvroConfig>, List<Map<String, dynamic>>>(avroConfigs, (value) => pulumi.Input.encodeList<GetSubscriptionCloudStorageConfigAvroConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bucket': bucket,
      'filenameDatetimeFormat': filenameDatetimeFormat,
      'filenamePrefix': filenamePrefix,
      'filenameSuffix': filenameSuffix,
      'maxBytes': maxBytes,
      'maxDuration': maxDuration,
      'maxMessages': maxMessages,
      'serviceAccountEmail': serviceAccountEmail,
      'state': state,
    };
  }

  factory GetSubscriptionCloudStorageConfig.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionCloudStorageConfig(
      avroConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSubscriptionCloudStorageConfigAvroConfig>(map['avroConfigs']!, (value) => GetSubscriptionCloudStorageConfigAvroConfig.fromMap((value as Map).cast<String, dynamic>()))),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      filenameDatetimeFormat: pulumi.Input.fromValue(map['filenameDatetimeFormat'] as String),
      filenamePrefix: pulumi.Input.fromValue(map['filenamePrefix'] as String),
      filenameSuffix: pulumi.Input.fromValue(map['filenameSuffix'] as String),
      maxBytes: pulumi.Input.fromValue(map['maxBytes'] as int),
      maxDuration: pulumi.Input.fromValue(map['maxDuration'] as String),
      maxMessages: pulumi.Input.fromValue(map['maxMessages'] as int),
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

