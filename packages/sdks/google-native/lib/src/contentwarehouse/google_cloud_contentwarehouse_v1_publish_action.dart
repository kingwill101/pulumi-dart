// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the action responsible for publishing messages to a Pub/Sub topic.
class GoogleCloudContentwarehouseV1PublishAction {
  /// Messages to be published.
  final pulumi.Input<List<String>>? messages;
  /// The topic id in the Pub/Sub service for which messages will be published to.
  final pulumi.Input<String>? topicId;

  /// Creates a new [GoogleCloudContentwarehouseV1PublishAction].
  /// [messages] Messages to be published.
  /// [topicId] The topic id in the Pub/Sub service for which messages will be published to.
  GoogleCloudContentwarehouseV1PublishAction({
    this.messages,
    this.topicId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messages': ?messages,
      'topicId': ?topicId,
    };
  }

  factory GoogleCloudContentwarehouseV1PublishAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PublishAction(
      messages: (() { final guardedValue = map['messages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      topicId: (() { final guardedValue = map['topicId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

