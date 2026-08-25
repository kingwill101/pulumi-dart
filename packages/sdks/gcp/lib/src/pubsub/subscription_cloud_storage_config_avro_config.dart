// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionCloudStorageConfigAvroConfig {
  /// When true, the output Cloud Storage file will be serialized using the topic schema, if it exists.
  final pulumi.Input<bool?>? useTopicSchema;
  /// When true, write the subscription name, messageId, publishTime, attributes, and orderingKey as additional fields in the output.
  final pulumi.Input<bool?>? writeMetadata;

  /// Creates a new [SubscriptionCloudStorageConfigAvroConfig].
  /// [useTopicSchema] When true, the output Cloud Storage file will be serialized using the topic schema, if it exists.
  /// [writeMetadata] When true, write the subscription name, messageId, publishTime, attributes, and orderingKey as additional fields in the output.
  const SubscriptionCloudStorageConfigAvroConfig({
    this.useTopicSchema,
    this.writeMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useTopicSchema': ?useTopicSchema,
      'writeMetadata': ?writeMetadata,
    };
  }

  factory SubscriptionCloudStorageConfigAvroConfig.fromMap(Map<String, dynamic> map) {
    return SubscriptionCloudStorageConfigAvroConfig(
      useTopicSchema: (() { final guardedValue = map['useTopicSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      writeMetadata: (() { final guardedValue = map['writeMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
