// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_ingestion_data_source_settings_cloud_storage_text_format.dart';

class TopicIngestionDataSourceSettingsCloudStorage {
  /// Configuration for reading Cloud Storage data in Avro binary format. The
  /// bytes of each object will be set to the `data` field of a Pub/Sub message.
  final pulumi.Input<Map<String, dynamic>>? avroFormat;
  /// Cloud Storage bucket. The bucket name must be without any
  /// prefix like "gs://". See the bucket naming requirements:
  /// https://cloud.google.com/storage/docs/buckets#naming.
  final pulumi.Input<String> bucket;
  /// Glob pattern used to match objects that will be ingested. If unset, all
  /// objects will be ingested. See the supported patterns:
  /// https://cloud.google.com/storage/docs/json_api/v1/objects/list#list-objects-and-prefixes-using-glob
  final pulumi.Input<String>? matchGlob;
  /// The timestamp set in RFC3339 text format. If set, only objects with a
  /// larger or equal timestamp will be ingested. Unset by default, meaning
  /// all objects will be ingested.
  final pulumi.Input<String>? minimumObjectCreateTime;
  /// Configuration for reading Cloud Storage data written via Cloud Storage
  /// subscriptions(See https://cloud.google.com/pubsub/docs/cloudstorage). The
  /// data and attributes fields of the originally exported Pub/Sub message
  /// will be restored when publishing.
  final pulumi.Input<Map<String, dynamic>>? pubsubAvroFormat;
  /// Configuration for reading Cloud Storage data in text format. Each line of
  /// text as specified by the delimiter will be set to the `data` field of a
  /// Pub/Sub message.
  /// Structure is documented below.
  final pulumi.Input<TopicIngestionDataSourceSettingsCloudStorageTextFormat>? textFormat;

  /// Creates a new [TopicIngestionDataSourceSettingsCloudStorage].
  /// [avroFormat] Configuration for reading Cloud Storage data in Avro binary format. The
  /// [bucket] Cloud Storage bucket. The bucket name must be without any
  /// [matchGlob] Glob pattern used to match objects that will be ingested. If unset, all
  /// [minimumObjectCreateTime] The timestamp set in RFC3339 text format. If set, only objects with a
  /// [pubsubAvroFormat] Configuration for reading Cloud Storage data written via Cloud Storage
  /// [textFormat] Configuration for reading Cloud Storage data in text format. Each line of
  TopicIngestionDataSourceSettingsCloudStorage({
    this.avroFormat,
    required this.bucket,
    this.matchGlob,
    this.minimumObjectCreateTime,
    this.pubsubAvroFormat,
    this.textFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avroFormat': ?avroFormat,
      'bucket': bucket,
      'matchGlob': ?matchGlob,
      'minimumObjectCreateTime': ?minimumObjectCreateTime,
      'pubsubAvroFormat': ?pubsubAvroFormat,
      'textFormat': ?pulumi.Input.mapOptionalInputValue<TopicIngestionDataSourceSettingsCloudStorageTextFormat, Map<String, dynamic>>(textFormat, (value) => value.toMap()),
    };
  }

  factory TopicIngestionDataSourceSettingsCloudStorage.fromMap(Map<String, dynamic> map) {
    return TopicIngestionDataSourceSettingsCloudStorage(
      avroFormat: map['avroFormat'] == null ? null : ((map['avroFormat']! as Map).cast<String, dynamic>()).input(),
      bucket: (map['bucket'] as String).input(),
      matchGlob: map['matchGlob'] == null ? null : (map['matchGlob']! as String).input(),
      minimumObjectCreateTime: map['minimumObjectCreateTime'] == null ? null : (map['minimumObjectCreateTime']! as String).input(),
      pubsubAvroFormat: map['pubsubAvroFormat'] == null ? null : ((map['pubsubAvroFormat']! as Map).cast<String, dynamic>()).input(),
      textFormat: map['textFormat'] == null ? null : (TopicIngestionDataSourceSettingsCloudStorageTextFormat.fromMap((map['textFormat']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

