// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_subscription_destination_pubsub_subscription_pubsub_subscription_cloud_storage_config_avro_config.dart';

class ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfig {
  /// If set, message data will be written to Cloud Storage in Avro format.
  /// Structure is documented below.
  final pulumi.Input<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfigAvroConfig?>? avroConfig;
  /// User-provided name for the Cloud Storage bucket. The bucket must be created by the user.
  /// The bucket name must be without any prefix like "gs://". See the
  /// [bucket naming requirements](https://cloud.google.com/storage/docs/buckets#naming).
  final pulumi.Input<String?>? bucket;
  /// User-provided format string specifying how to represent datetimes in Cloud Storage filenames.
  /// See the [datetime format guidance](https://cloud.google.com/pubsub/docs/create-cloudstorage-subscription#file_names).
  final pulumi.Input<String?>? filenameDatetimeFormat;
  /// User-provided prefix for Cloud Storage filename. See the
  /// [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
  final pulumi.Input<String?>? filenamePrefix;
  /// User-provided suffix for Cloud Storage filename. See the
  /// [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
  /// Must not end in "/".
  final pulumi.Input<String?>? filenameSuffix;
  /// The maximum bytes that can be written to a Cloud Storage file before a new file is created.
  /// Min 1 KB, max 10 GiB. The maxBytes limit may be exceeded in cases where messages are larger
  /// than the limit.
  final pulumi.Input<String?>? maxBytes;
  /// The maximum duration that can elapse before a new Cloud Storage file is created.
  /// Min 1 minute, max 10 minutes, default 5 minutes. May not exceed the subscription's
  /// acknowledgement deadline.
  final pulumi.Input<String?>? maxDuration;
  /// The maximum number of messages that can be written to a Cloud Storage file before a new file
  /// is created. Min 1000 messages.
  final pulumi.Input<String?>? maxMessages;
  /// The service account to use to write to Cloud Storage. The subscription creator or updater that
  /// specifies this field must have `iam.serviceAccounts.actAs` permission on the service account.
  /// If not specified, the Pub/Sub service agent,
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
  final pulumi.Input<String?>? serviceAccountEmail;

  /// Creates a new [ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfig].
  /// [avroConfig] If set, message data will be written to Cloud Storage in Avro format.
  /// [bucket] User-provided name for the Cloud Storage bucket. The bucket must be created by the user.
  /// [filenameDatetimeFormat] User-provided format string specifying how to represent datetimes in Cloud Storage filenames.
  /// [filenamePrefix] User-provided prefix for Cloud Storage filename. See the
  /// [filenameSuffix] User-provided suffix for Cloud Storage filename. See the
  /// [maxBytes] The maximum bytes that can be written to a Cloud Storage file before a new file is created.
  /// [maxDuration] The maximum duration that can elapse before a new Cloud Storage file is created.
  /// [maxMessages] The maximum number of messages that can be written to a Cloud Storage file before a new file
  /// [serviceAccountEmail] The service account to use to write to Cloud Storage. The subscription creator or updater that
  const ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfig({
    this.avroConfig,
    this.bucket,
    this.filenameDatetimeFormat,
    this.filenamePrefix,
    this.filenameSuffix,
    this.maxBytes,
    this.maxDuration,
    this.maxMessages,
    this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avroConfig': ?pulumi.Input.mapOptionalInputValue<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfigAvroConfig, Map<String, dynamic>>(avroConfig, (value) => value.toMap()),
      'bucket': ?bucket,
      'filenameDatetimeFormat': ?filenameDatetimeFormat,
      'filenamePrefix': ?filenamePrefix,
      'filenameSuffix': ?filenameSuffix,
      'maxBytes': ?maxBytes,
      'maxDuration': ?maxDuration,
      'maxMessages': ?maxMessages,
      'serviceAccountEmail': ?serviceAccountEmail,
    };
  }

  factory ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfig.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfig(
      avroConfig: (() { final guardedValue = map['avroConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfigAvroConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filenameDatetimeFormat: (() { final guardedValue = map['filenameDatetimeFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filenamePrefix: (() { final guardedValue = map['filenamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filenameSuffix: (() { final guardedValue = map['filenameSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBytes: (() { final guardedValue = map['maxBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDuration: (() { final guardedValue = map['maxDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxMessages: (() { final guardedValue = map['maxMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
