// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topic_ingestion_data_source_setting_cloud_storage_text_format.dart';

class GetTopicIngestionDataSourceSettingCloudStorage {
  /// Configuration for reading Cloud Storage data in Avro binary format. The
  /// bytes of each object will be set to the 'data' field of a Pub/Sub message.
  final pulumi.Input<List<Map<String, dynamic>>> avroFormats;
  /// Cloud Storage bucket. The bucket name must be without any
  /// prefix like "gs://". See the bucket naming requirements:
  /// https://cloud.google.com/storage/docs/buckets#naming.
  final pulumi.Input<String> bucket;
  /// Glob pattern used to match objects that will be ingested. If unset, all
  /// objects will be ingested. See the supported patterns:
  /// https://cloud.google.com/storage/docs/json_api/v1/objects/list#list-objects-and-prefixes-using-glob
  final pulumi.Input<String> matchGlob;
  /// The timestamp set in RFC3339 text format. If set, only objects with a
  /// larger or equal timestamp will be ingested. Unset by default, meaning
  /// all objects will be ingested.
  final pulumi.Input<String> minimumObjectCreateTime;
  /// Configuration for reading Cloud Storage data written via Cloud Storage
  /// subscriptions(See https://cloud.google.com/pubsub/docs/cloudstorage). The
  /// data and attributes fields of the originally exported Pub/Sub message
  /// will be restored when publishing.
  final pulumi.Input<List<Map<String, dynamic>>> pubsubAvroFormats;
  /// Configuration for reading Cloud Storage data in text format. Each line of
  /// text as specified by the delimiter will be set to the 'data' field of a
  /// Pub/Sub message.
  final pulumi.Input<List<GetTopicIngestionDataSourceSettingCloudStorageTextFormat>> textFormats;

  /// Creates a new [GetTopicIngestionDataSourceSettingCloudStorage].
  /// [avroFormats] Configuration for reading Cloud Storage data in Avro binary format. The
  /// [bucket] Cloud Storage bucket. The bucket name must be without any
  /// [matchGlob] Glob pattern used to match objects that will be ingested. If unset, all
  /// [minimumObjectCreateTime] The timestamp set in RFC3339 text format. If set, only objects with a
  /// [pubsubAvroFormats] Configuration for reading Cloud Storage data written via Cloud Storage
  /// [textFormats] Configuration for reading Cloud Storage data in text format. Each line of
  const GetTopicIngestionDataSourceSettingCloudStorage({
    required this.avroFormats,
    required this.bucket,
    required this.matchGlob,
    required this.minimumObjectCreateTime,
    required this.pubsubAvroFormats,
    required this.textFormats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avroFormats': avroFormats,
      'bucket': bucket,
      'matchGlob': matchGlob,
      'minimumObjectCreateTime': minimumObjectCreateTime,
      'pubsubAvroFormats': pubsubAvroFormats,
      'textFormats': pulumi.Input.mapInputValue<List<GetTopicIngestionDataSourceSettingCloudStorageTextFormat>, List<Map<String, dynamic>>>(textFormats, (value) => pulumi.Input.encodeList<GetTopicIngestionDataSourceSettingCloudStorageTextFormat, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTopicIngestionDataSourceSettingCloudStorage.fromMap(Map<String, dynamic> map) {
    return GetTopicIngestionDataSourceSettingCloudStorage(
      avroFormats: pulumi.Input.fromValue((map['avroFormats'] as List).cast<Map<String, dynamic>>()),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      matchGlob: pulumi.Input.fromValue(map['matchGlob'] as String),
      minimumObjectCreateTime: pulumi.Input.fromValue(map['minimumObjectCreateTime'] as String),
      pubsubAvroFormats: pulumi.Input.fromValue((map['pubsubAvroFormats'] as List).cast<Map<String, dynamic>>()),
      textFormats: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTopicIngestionDataSourceSettingCloudStorageTextFormat>(map['textFormats']!, (value) => GetTopicIngestionDataSourceSettingCloudStorageTextFormat.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

