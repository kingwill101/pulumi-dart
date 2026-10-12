// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfigAvroConfig {
  /// When true, the output Cloud Storage file will be serialized using
  /// the topic schema, if it exists.
  final pulumi.Input<bool?>? useTopicSchema;
  /// When true, write the subscription name, message_id, publish_time, attributes, and orderingKey
  /// as additional fields in the output. The subscription name, message_id, and publishTime fields
  /// are put in their own fields while all other message properties other than data (for example,
  /// an ordering_key, if present) are added as entries in the attributes map.
  final pulumi.Input<bool?>? writeMetadata;

  /// Creates a new [ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfigAvroConfig].
  /// [useTopicSchema] When true, the output Cloud Storage file will be serialized using
  /// [writeMetadata] When true, write the subscription name, message_id, publish_time, attributes, and orderingKey
  const ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfigAvroConfig({
    this.useTopicSchema,
    this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useTopicSchema': ?useTopicSchema,
      'writeMetadata': ?writeMetadata,
    };
  }

  factory ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfigAvroConfig.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionCloudStorageConfigAvroConfig(
      useTopicSchema: (() { final guardedValue = map['useTopicSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      writeMetadata: (() { final guardedValue = map['writeMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
